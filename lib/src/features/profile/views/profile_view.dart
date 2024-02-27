import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileView extends HookConsumerWidget {
  const ProfileView({super.key});

  static const routeName = '/profile';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Center(
      child: Text('Profile View'),
    );
  }
}
