import 'package:hooks_riverpod/hooks_riverpod.dart';

final preloadProvider = FutureProvider.autoDispose<bool>((ref) async {
  // Do some preloading here
  // e.g. load some data from a preferences
  return true;
});
