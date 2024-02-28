import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../src/shared/shared.dart';
import 'components/appbar_navigation.dart';
import 'components/bottom_navigation.dart';
import 'components/side_navigation.dart';

class NavigationView extends HookConsumerWidget {
  final Widget child;
  const NavigationView({super.key, required this.child});

  static const routeName = '/navigation';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      extendBody: true,
      appBar: context.isMobile
          ? PreferredSize(
              preferredSize: Size.fromHeight(context.toolbarHeight),
              child: const NavigationAppbar(),
            )
          : null,
      body: Row(
        children: [
          if (!context.isMobile) ...const [
            NavigationSideNav(),
            VerticalDivider(),
          ],
          Expanded(child: child),
        ],
      ),
      bottomNavigationBar:
          context.isMobile ? const NavigationBottomNav() : null,
      floatingActionButton: const CThemeFAB(),
    );
  }
}
