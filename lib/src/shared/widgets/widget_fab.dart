import 'package:exposed/exposed.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../shared.dart';

class CThemeFAB extends ConsumerWidget {
  const CThemeFAB({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      child: Icon(
        context.isDarkMode ? Icons.light_mode : Icons.dark_mode,
      ),
      onPressed: () {
        ref.read(themeProvider.notifier).toggle();
      },
    );
  }
}
