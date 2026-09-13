class EnvConfig {
  /// Returns the base API URL depending on the target environment:
  /// - Android official emulator: 'http://10.0.2.2:8000/api'
  /// - Physical device via USB ADB reverse: 'http://127.0.0.1:8000/api'
  static String get apiBaseUrl => 'http://127.0.0.1:8000/api';
}
