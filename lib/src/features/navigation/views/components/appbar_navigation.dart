import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NavigationAppbar extends HookConsumerWidget {
  const NavigationAppbar({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      title: const Text('Navigation Appbar'),
    );
  }
}
