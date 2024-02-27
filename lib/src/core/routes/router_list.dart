import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/features.dart';
import '../config/config.dart';
import 'router_widget.dart';

final _rootKey = GlobalKey<NavigatorState>();
final _shellNavKey = GlobalKey<NavigatorState>();

final GoRouter appRouter = GoRouter(
  navigatorKey: _rootKey,
  initialLocation: Config.initRoute,
  routes: <RouteBase>[
    goRoute(
      parentNavigatorKey: _rootKey,
      path: SplashView.routeName,
      child: (context, state) => const SplashView(),
    ),
    shellRoute(
      parentNavigatorKey: _rootKey,
      navigatorKey: _shellNavKey,
      childParent: (Widget child) => NavigationView(child: child),
      routes: [
        goRoute(
          parentNavigatorKey: _shellNavKey,
          path: HomeView.routeName,
          child: (context, state) => const HomeView(),
        ),
        goRoute(
          parentNavigatorKey: _shellNavKey,
          path: SearchView.routeName,
          child: (context, state) => const SearchView(),
        ),
        goRoute(
          parentNavigatorKey: _shellNavKey,
          path: ProfileView.routeName,
          child: (context, state) => const ProfileView(),
        ),
      ],
    ),
  ],
);
