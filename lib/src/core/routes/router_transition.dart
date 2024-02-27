import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'router_layout.dart';

CustomTransitionPage customDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionDuration: const Duration(milliseconds: 600),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return CustomTransition.sharedAxisTransition(
        animation: animation,
        secondaryAnimation: secondaryAnimation,
        child: child,
      );
    },
  );
}

class CustomTransition {
  static Widget fadeTransition({
    BuildContext? context,
    required Animation<double> animation,
    Animation<double>? secondaryAnimation,
    required Widget child,
  }) {
    return FadeTransition(
      opacity: animation,
      child: BoxWidth(child: child),
    );
  }

  static Widget slideTransition({
    BuildContext? context,
    required Animation<double> animation,
    Animation<double>? secondaryAnimation,
    required Widget child,
  }) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1.0, 0.0),
        end: Offset.zero,
      ).animate(animation),
      child: BoxWidth(child: child),
    );
  }

  static Widget sharedAxisTransition({
    BuildContext? context,
    required Animation<double> animation,
    required Animation<double> secondaryAnimation,
    required Widget child,
  }) {
    return SharedAxisTransition(
      animation: animation,
      secondaryAnimation: secondaryAnimation,
      transitionType: SharedAxisTransitionType.horizontal,
      child: BoxWidth(child: child),
    );
  }
}
