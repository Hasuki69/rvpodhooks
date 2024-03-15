import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final themeProvider =
    NotifierProvider.autoDispose<ThemeNotifier, ThemeMode>(ThemeNotifier.new);

class ThemeNotifier extends AutoDisposeNotifier<ThemeMode> {
  @override
  build() {
    return ThemeMode.system;
  }

  void toggle() {
    state = state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
  }
}
