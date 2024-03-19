import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _PrefService {
  const _PrefService();

  Future<void> setPref(String key, dynamic value) async {
    // Initialize the SharedPreferences
    final pref = await SharedPreferences.getInstance();

    // Set the value based on the type
    if (value is String) {
      pref.setString(key, value);
    } else if (value is int) {
      pref.setInt(key, value);
    } else if (value is bool) {
      pref.setBool(key, value);
    } else if (value is double) {
      pref.setDouble(key, value);
    } else if (value is List<String>) {
      pref.setStringList(key, value);
    }
  }

  Future<dynamic> getPref(String key, dynamic def) async {
    final pref = await SharedPreferences.getInstance();
    return pref.get(key) ?? def;
  }

  Future<void> removePref(String key) async {
    final pref = await SharedPreferences.getInstance();
    pref.remove(key);
  }

  Future<void> clearPref() async {
    final pref = await SharedPreferences.getInstance();
    pref.clear();
  }
}

final prefProvider = Provider.autoDispose<_PrefService>((ref) {
  return const _PrefService();
});
