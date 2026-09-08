import 'package:isar/isar.dart';

part 'local_phrase.g.dart';

@collection
class LocalPhrase {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String phraseId;

  late String originalText;
  late String translatedText;
  late String sourceLanguage;
  late String targetLanguage;

  DateTime? lastReviewedAt;
  int reviewCount = 0;
  bool isSynced = false;
}
