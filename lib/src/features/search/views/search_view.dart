import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchView extends HookConsumerWidget {
  const SearchView({super.key});

  static const routeName = '/search';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Center(
      child: Text('Search View'),
    );
  }
}
