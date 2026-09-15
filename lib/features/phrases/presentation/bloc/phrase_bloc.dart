import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulid/ulid.dart';
import '../../data/models/local_phrase.dart';
import '../../data/repositories/phrase_repository.dart';
import '../../domain/enums/phrase_status.dart';
import 'phrase_event.dart';
import 'phrase_state.dart';

class PhraseBloc extends Bloc<PhraseEvent, PhraseState> {
  final PhraseRepository repository;

  PhraseBloc({required this.repository}) : super(const PhraseInitial()) {
    on<CaptureTextSubmitted>(_onCaptureTextSubmitted);
    on<CaptureAudioRecorded>(_onCaptureAudioRecorded);
    on<CaptureImageCropped>(_onCaptureImageCropped);
    on<FetchActivePhrases>(_onFetchActivePhrases);
  }

  Future<void> _onCaptureTextSubmitted(
    CaptureTextSubmitted event,
    Emitter<PhraseState> emit,
  ) async {
    emit(const PhraseLoading());

    try {
      final generatedUlid = Ulid().toString();

      final newPhrase = LocalPhrase()
        ..ulid = generatedUlid
        ..originalText = event.text
        ..sourceLanguage = event.sourceLanguage
        ..status = PhraseStatus.captured.value
        ..tag = event.tag
        ..isSynced = false
        ..updatedAt = DateTime.now();

      await repository.saveLocalPhrase(newPhrase);
      emit(PhraseSavedLocal(newPhrase));

      _triggerBackgroundStore(
        ulid: generatedUlid,
        rawText: event.text,
        sourceLanguage: event.sourceLanguage,
        tag: event.tag,
        medium: 'text',
      );
    } catch (e) {
      emit(PhraseSyncError(e.toString()));
    }
  }

  Future<void> _onCaptureAudioRecorded(
    CaptureAudioRecorded event,
    Emitter<PhraseState> emit,
  ) async {
    emit(const PhraseLoading());

    try {
      final generatedUlid = Ulid().toString();

      final newPhrase = LocalPhrase()
        ..ulid = generatedUlid
        ..originalText = event.audioPath
        ..sourceLanguage = event.sourceLanguage
        ..status = PhraseStatus.captured.value
        ..tag = event.tag
        ..isSynced = false
        ..updatedAt = DateTime.now();

      await repository.saveLocalPhrase(newPhrase);
      emit(PhraseSavedLocal(newPhrase));

      _triggerBackgroundStore(
        ulid: generatedUlid,
        rawText: event.audioPath,
        sourceLanguage: event.sourceLanguage,
        tag: event.tag,
        medium: 'audio',
      );
    } catch (e) {
      emit(PhraseSyncError(e.toString()));
    }
  }

  Future<void> _onCaptureImageCropped(
    CaptureImageCropped event,
    Emitter<PhraseState> emit,
  ) async {
    emit(const PhraseLoading());

    try {
      final generatedUlid = Ulid().toString();

      final newPhrase = LocalPhrase()
        ..ulid = generatedUlid
        ..originalText = event.imagePath
        ..sourceLanguage = event.sourceLanguage
        ..status = PhraseStatus.captured.value
        ..tag = event.tag
        ..isSynced = false
        ..updatedAt = DateTime.now();

      await repository.saveLocalPhrase(newPhrase);
      emit(PhraseSavedLocal(newPhrase));

      _triggerBackgroundStore(
        ulid: generatedUlid,
        rawText: event.imagePath,
        sourceLanguage: event.sourceLanguage,
        tag: event.tag,
        medium: 'image',
      );
    } catch (e) {
      emit(PhraseSyncError(e.toString()));
    }
  }

  Future<void> _onFetchActivePhrases(
    FetchActivePhrases event,
    Emitter<PhraseState> emit,
  ) async {
    emit(const PhraseLoading());
    try {
      final phrases = await repository.getActivePhrasesLocal();
      emit(PhraseActiveLoaded(phrases));
    } catch (e) {
      emit(PhraseSyncError(e.toString()));
    }
  }

  void _triggerBackgroundStore({
    required String ulid,
    required String rawText,
    required String sourceLanguage,
    String? tag,
    required String medium,
  }) {
    repository.storeRemotePhrase(
      ulid: ulid,
      rawText: rawText,
      sourceLanguage: sourceLanguage,
      tag: tag,
      medium: medium,
    ).catchError((_) {
      
    });
  }
}
