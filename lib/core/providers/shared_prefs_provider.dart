// services/shared_prefs_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// SharedPreferences instance provider
///
/// MUST be overridden in main.dart before running the app:
///
/// ```dart
/// final sharedPrefs = await SharedPreferences.getInstance();
/// overrides: [
///   sharedPreferencesProvider.overrideWithValue(sharedPrefs),
/// ]
/// ```
final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError(
    'sharedPreferencesProvider must be overridden in main.dart '
    'with a real SharedPreferences instance.',
  );
});
