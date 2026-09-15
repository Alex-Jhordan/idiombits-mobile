enum PhraseStatus {
  captured('captured'),
  queued('queued'),
  inProgress('in_progress'),
  learned('learned'),
  reLearning('re_learning');

  final String value;
  const PhraseStatus(this.value);

  static PhraseStatus fromString(String status) {
    return PhraseStatus.values.firstWhere(
      (e) => e.value == status,
      orElse: () => throw ArgumentError('Invalid PhraseStatus state: $status'),
    );
  }
}
