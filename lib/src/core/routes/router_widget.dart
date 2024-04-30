import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'router_transition.dart';

RouteBase goRoute({
  required String path,
  required Function(BuildContext, GoRouterState) child,
  String? name,
  required GlobalKey<NavigatorState>? parentNavigatorKey,
  FutureOr<String?> Function(BuildContext, GoRouterState)? redirect,
  List<RouteBase> routes = const <RouteBase>[],
  FutureOr<bool> Function(BuildContext, GoRouterState)? onExit,
}) {
  return GoRoute(
    name: name,
    path: path,
    routes: routes,
    parentNavigatorKey: parentNavigatorKey,
    redirect: redirect,
    onExit: onExit,
    builder: (context, state) {
      return child(context, state);
    },
    pageBuilder: (context, state) => customDefaultTransition(
      context: context,
      state: state,
      child: child(context, state),
    ),
  );
}

ShellRoute shellRoute({
  required GlobalKey<NavigatorState>? parentNavigatorKey,
  required GlobalKey<NavigatorState>? navigatorKey,
  required Widget Function(Widget child) childParent,
  Widget Function(BuildContext, GoRouterState, Widget)? builder,
  Page<dynamic> Function(BuildContext, GoRouterState, Widget)? pageBuilder,
  List<NavigatorObserver>? observers,
  required List<RouteBase> routes,
  String? restorationScopeId,
}) {
  return ShellRoute(
    observers: observers,
    routes: routes,
    parentNavigatorKey: parentNavigatorKey,
    navigatorKey: navigatorKey,
    restorationScopeId: restorationScopeId,
    builder: (context, state, child) {
      return childParent(child);
    },
    pageBuilder: (context, state, child) {
      return customDefaultTransition(
        context: context,
        state: state,
        child: childParent(child),
      );
    },
  );
}
