import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'shared/shared.dart';

class PreloadApp extends HookConsumerWidget {
  final Widget child;
  const PreloadApp({super.key, required this.child});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pref = ref.watch(preloadProvider);
    return switch (pref) {
      AsyncData() => child,
      _ => const SizedBox.shrink(),
    };
  }
}
