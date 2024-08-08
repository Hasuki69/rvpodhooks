import 'package:exposed/exposed.dart';
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

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        preload.whenData((_) {
          Future.delayed(duration, () => context.mounted ? context.go(HomeView.routeName) : null);
        });
      });

      return null;
    });

    return Scaffold(
      body: FlutterLogo(size: context.width * 0.6).center(),
    );
  }
}
