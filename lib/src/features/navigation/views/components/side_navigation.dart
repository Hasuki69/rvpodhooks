import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../shared/shared.dart';
import '../../controllers/navigation_page_controller.dart';

class NavigationSideNav extends HookConsumerWidget {
  const NavigationSideNav({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(navigationPageProvider);

    return SizedBox(
      width: context.isTablet ? 72 : 240,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: FlutterLogo(
            size: !context.isHandheld ? 100 : 32,
            style: !context.isHandheld
                ? FlutterLogoStyle.horizontal
                : FlutterLogoStyle.markOnly,
          ),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: Divider(),
          ),
        ),
        body: NavigationRail(
          extended: !context.isHandheld,
          selectedIndex: selectedIndex,
          labelType: context.isTablet ? NavigationRailLabelType.all : null,
          onDestinationSelected: (value) => ref
              .read(navigationPageProvider.notifier)
              .onDestinationSelected(context, value: value),
          destinations: const [
            NavigationRailDestination(
              icon: Icon(Icons.home),
              label: Text('Home'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.search),
              label: Text('Search'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.person),
              label: Text('Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
