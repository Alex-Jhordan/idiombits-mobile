import 'package:equatable/equatable.dart';
import '../../data/models/local_phrase.dart';

abstract class PhraseState extends Equatable {
  const PhraseState();

  @override
  List<Object?> get props => [];
}

class PhraseInitial extends PhraseState {
  const PhraseInitial();
}

class PhraseLoading extends PhraseState {
  const PhraseLoading();
}

class PhraseSavedLocal extends PhraseState {
  final LocalPhrase phrase;

  const PhraseSavedLocal(this.phrase);

  @override
  List<Object?> get props => [phrase];
}

class PhraseActiveLoaded extends PhraseState {
  final List<LocalPhrase> phrases;

  const PhraseActiveLoaded(this.phrases);

  @override
  List<Object?> get props => [phrases];
}

class PhraseSyncError extends PhraseState {
  final String message;

  const PhraseSyncError(this.message);

  @override
  List<Object?> get props => [message];
}
