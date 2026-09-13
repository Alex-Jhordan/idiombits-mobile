import 'package:isar/isar.dart';

part 'local_phrase.g.dart';

@Collection()
class LocalPhrase {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String ulid;

  late String originalText;

  String? idiomaticTranslation;

  late String sourceLanguage;

  late String status;

  String? payloadData;

  String? tag;

  int queuePosition = 0;

  int successStreak = 0;

  bool isSynced = false;

  DateTime? learnedAt;

  late DateTime updatedAt;

  LocalPhrase();

  factory LocalPhrase.fromJson(Map<String, dynamic> json, {bool isSynced = true}) {
    final payload = json['phrase_payload'] as Map<String, dynamic>?;

    return LocalPhrase()
      ..ulid = json['ulid'] as String
      ..originalText = json['original_text'] as String
      ..idiomaticTranslation = payload?['idiomatic_translation'] as String?
      ..sourceLanguage = json['source_language'] as String? ?? 'es'
      ..status = json['status'] as String? ?? 'captured'
      ..payloadData = payload?['payload_data'] != null 
          ? payload!['payload_data'].toString() 
          : null
      ..tag = json['tag'] as String?
      ..queuePosition = (json['queue_position'] as num?)?.toInt() ?? 0
      ..successStreak = (json['success_streak'] as num?)?.toInt() ?? 0
      ..isSynced = isSynced
      ..learnedAt = json['learned_at'] != null 
          ? DateTime.tryParse(json['learned_at'] as String) 
          : null
      ..updatedAt = json['updated_at'] != null 
          ? DateTime.parse(json['updated_at'] as String) 
          : DateTime.now();
  }

  Map<String, dynamic> toJson() {
    return {
      'ulid': ulid,
      'original_text': originalText,
      'source_language': sourceLanguage,
      'status': status,
      'tag': tag,
      'queue_position': queuePosition,
      'success_streak': successStreak,
      'updated_at': updatedAt.toIso8601String(),
    };
  }
}
