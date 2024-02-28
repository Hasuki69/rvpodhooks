import 'package:flutter/material.dart';

extension SliverExtension on Widget {
  /// as a shorthand for SliverToBoxAdapter
  SliverToBoxAdapter get toSliver => SliverToBoxAdapter(child: this);
}
