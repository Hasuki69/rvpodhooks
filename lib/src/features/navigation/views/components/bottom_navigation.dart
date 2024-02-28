import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/core.dart';
import '../../controllers/navigation_page_controller.dart';

class NavigationBottomNav extends HookConsumerWidget {
  const NavigationBottomNav({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(navigationPageProvider);

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Gap.circle),
      ),
      margin: const EdgeInsets.all(Gap.l),
      child: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (value) => ref
            .read(navigationPageProvider.notifier)
            .onDestinationSelected(context, value: value),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
