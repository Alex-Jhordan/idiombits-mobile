import 'dart:convert';
import 'package:isar/isar.dart';
import '../../../../core/network/api_client.dart';
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
        .statusEqualTo('in_progress')
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
              local.isSynced = true;
              local.status = statuses[local.ulid].toString();
              await isar.localPhrases.putByUlid(local);
            }
          }
        });
      }
    } else {
      throw Exception('HTTP ${response.statusCode}: ${response.body}');
    }
  }
}
