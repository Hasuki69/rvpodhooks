import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../src/shared/shared.dart';
import '../../features.dart';

class SplashView extends HookConsumerWidget {
  final Duration duration;
  const SplashView({super.key, this.duration = const Duration(seconds: 2)});

  static const routeName = '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preload = ref.watch(preloadProvider(context));
    // This is the equivalent of the `initState` method in a StatefulWidget
    // It runs only once when the widget is first created
    // It's a good place to put logic that only needs to run once
    // It's also a good place to put logic that needs to run after the first frame is rendered
    // In this case, we're using it to navigate to the HomeView after a delay of 2 seconds
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        preload.whenData((_) {
          Future.delayed(duration, () => context.go(HomeView.routeName));
        });
      });

      // if you return a function in useEffect, it will be called when the widget is removed from the widget tree (like `dispose` in a StatefulWidget)
      // eg. return () => controller.dispose();
      return null;
    }, [
      // eg. controller,
    ]);

    return Scaffold(
      body: Center(
        child: FlutterLogo(size: context.width * 0.6),
      ),
    );
  }
}
