import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final prefProvider = FutureProvider<SharedPreferences>((ref) async {
  SharedPreferences pref = await SharedPreferences.getInstance().then((value) {
    // Do something with the value (Preferences object)
    return value;
  });
  return pref;
});
