import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final preloadProvider = AutoDisposeFutureProviderFamily<bool, BuildContext>((ref, context) async {
  // Do some preloading here
  // e.g. load some data from a preferences
  return true;
});
