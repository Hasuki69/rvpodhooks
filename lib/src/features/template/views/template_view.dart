import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TemplateView extends HookConsumerWidget {
  const TemplateView({super.key});

  static const routeName = '/template';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: Center(child: FlutterLogo()),
    );
  }
}
