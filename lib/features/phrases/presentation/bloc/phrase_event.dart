import 'package:equatable/equatable.dart';

abstract class PhraseEvent extends Equatable {
  const PhraseEvent();

  @override
  List<Object?> get props => [];
}

class CaptureTextSubmitted extends PhraseEvent {
  final String text;
  final String sourceLanguage;
  final String? tag;

  const CaptureTextSubmitted({
    required this.text,
    required this.sourceLanguage,
    this.tag,
  });

  @override
  List<Object?> get props => [text, sourceLanguage, tag];
}

class CaptureAudioRecorded extends PhraseEvent {
  final String audioPath;
  final String sourceLanguage;
  final String? tag;

  const CaptureAudioRecorded({
    required this.audioPath,
    required this.sourceLanguage,
    this.tag,
  });

  @override
  List<Object?> get props => [audioPath, sourceLanguage, tag];
}

class CaptureImageCropped extends PhraseEvent {
  final String imagePath;
  final String sourceLanguage;
  final String? tag;

  const CaptureImageCropped({
    required this.imagePath,
    required this.sourceLanguage,
    this.tag,
  });

  @override
  List<Object?> get props => [imagePath, sourceLanguage, tag];
}

class FetchActivePhrases extends PhraseEvent {
  const FetchActivePhrases();
}
