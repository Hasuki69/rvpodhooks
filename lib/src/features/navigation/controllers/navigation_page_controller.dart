import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../features.dart';

final navigationPageProvider =
    NotifierProvider.autoDispose<NavigationPageNotifier, int>(
        NavigationPageNotifier.new);

class NavigationPageNotifier extends AutoDisposeNotifier<int> {
  @override
  build() => 0;

  @override
  set state(int value) {
    // TODO: implement state
    super.state = value;
  }

  void onDestinationSelected(BuildContext context, {required int value}) {
    state = value;
    switch (state) {
      case 0:
        context.go(HomeView.routeName);
      case 1:
        context.go(SearchView.routeName);
      case 2:
        context.go(ProfileView.routeName);
      default:
        context.go(HomeView.routeName);
    }
  }
}
