import 'dart:convert';
import 'dart:developer' as developer;
import 'package:isar/isar.dart';
import '../../../../core/network/api_client.dart';
import '../../domain/enums/phrase_status.dart';
import '../models/local_phrase.dart';

class PhraseRepository {
  final Isar isar;
  final ApiClient apiClient;

  PhraseRepository({
    required this.isar,
    required this.apiClient,
  });

  Future<List<LocalPhrase>> getActivePhrasesLocal() async {
    return await isar.localPhrases
        .filter()
        .statusEqualTo(PhraseStatus.inProgress.value)
        .findAll();
  }

  Future<List<LocalPhrase>> getUnsyncedPhrases() async {
    return await isar.localPhrases
        .filter()
        .isSyncedEqualTo(false)
        .findAll();
  }

  Future<void> saveLocalPhrase(LocalPhrase phrase) async {
    await isar.writeTxn(() async {
      await isar.localPhrases.putByUlid(phrase);
    });
  }

  Future<void> syncWithBackend() async {
    final unsynced = await getUnsyncedPhrases();

    if (unsynced.isEmpty) {
      return;
    }

    final List<Map<String, dynamic>> payload =
        unsynced.map((p) => p.toJson()).toList();

    final response = await apiClient.post(
      '/v1/phrases/sync',
      body: {'phrases': payload},
    );

    if (response.statusCode == 200 || response.statusCode == 202) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;

      if (data['synced'] == true) {
        final statuses = data['statuses'] as Map<String, dynamic>? ?? {};

        await isar.writeTxn(() async {
          for (var local in unsynced) {
            if (statuses.containsKey(local.ulid)) {
              final statusString = statuses[local.ulid].toString();
              final validatedStatus = PhraseStatus.fromString(statusString);

              local.isSynced = true;
              local.status = validatedStatus.value;
              await isar.localPhrases.putByUlid(local);
            }
          }
        });
      }
    } else {
      throw Exception('HTTP ${response.statusCode}: ${response.body}');
    }
  }

  Future<void> storeRemotePhrase({
    required String ulid,
    required String rawText,
    required String sourceLanguage,
    String? tag,
    required String medium,
  }) async {
    try {
      final response = await apiClient.post(
        '/v1/phrases',
        body: {
          'ulid': ulid,
          'original_text': rawText,
          'source_language': sourceLanguage,
          'tag': tag,
          'medium': medium,
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201 || response.statusCode == 202) {
        final local = await isar.localPhrases.getByUlid(ulid);
        if (local != null) {
          await isar.writeTxn(() async {
            local.isSynced = true;
            await isar.localPhrases.putByUlid(local);
          });
        }
      } else {
        developer.log(
          'Server error syncing phrase $ulid: ${response.statusCode} - ${response.body}',
          name: 'PhraseRepository.storeRemotePhrase',
          error: response.statusCode,
        );
      }
    } catch (e, stackTrace) {
      developer.log(
        'Network or parsing exception syncing phrase $ulid',
        name: 'PhraseRepository.storeRemotePhrase',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }
}
