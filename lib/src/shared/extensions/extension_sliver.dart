import 'package:flutter/material.dart';

extension SliverExtension on Widget {
  // Convert a widget to a SliverToBoxAdapter
  SliverToBoxAdapter toSliver({Key? key}) => SliverToBoxAdapter(key: key, child: this);

  // Check if a widget is a Sliver
  bool isSliver({bool throwOnError = false}) {
    final isSliverWidget =
        this is SliverMultiBoxAdaptorWidget || this is SingleChildRenderObjectWidget || this is SliverToBoxAdapter;

    if (!isSliverWidget && throwOnError) {
      throw ArgumentError('The provided widget is not a Sliver.');
    }

    return isSliverWidget;
  }
}
