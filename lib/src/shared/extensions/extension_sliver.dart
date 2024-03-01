import 'package:flutter/material.dart';

extension SliverExtension on Widget {
  /// as a shorthand for SliverToBoxAdapter
  SliverToBoxAdapter toSliver({Key? key}) =>
      SliverToBoxAdapter(key: key, child: this);
}
