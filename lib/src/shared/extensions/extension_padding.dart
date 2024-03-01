import 'package:flutter/material.dart';

import '../../core/core.dart';

extension PaddingExtension on Widget {
  /// Add padding to all sides
  ///
  /// [value] is the padding value
  ///
  /// as a shorthand for EdgeInsets.all
  ///
  Widget gap(double? value, {Key? key}) {
    return Padding(
      key: key,
      padding: EdgeInsets.all(value ?? Gap.m),
      child: this,
    );
  }

  /// Add padding to all sides
  ///
  /// [value] is the padding value
  ///
  /// as a shorthand for EdgeInsets.all but for sliver
  ///
  Widget sliverGap(double? value, {Key? key}) {
    return SliverPadding(
      key: key,
      padding: EdgeInsets.all(value ?? Gap.m),
      sliver: this,
    );
  }

  /// Add padding symmetrically
  ///
  /// [horizontal] is the horizontal padding value
  ///
  /// [vertical] is the vertical padding value
  ///
  /// By default, the [horizontal] and [vertical] is 0.0
  ///
  /// as a shorthand for EdgeInsets.symmetric
  ///
  Widget gapSymmetric({Key? key, double horz = 0.0, double vert = 0.0}) {
    return Padding(
      key: key,
      padding: EdgeInsets.symmetric(horizontal: horz, vertical: vert),
      child: this,
    );
  }

  /// Add padding symmetrically
  ///
  /// [horizontal] is the horizontal padding value
  ///
  /// [vertical] is the vertical padding value
  ///
  /// By default, the [horizontal] and [vertical] is 0.0
  ///
  /// as a shorthand for EdgeInsets.symmetric but for sliver
  ///
  Widget sliverGapSymmetric({Key? key, double horz = 0.0, double vert = 0.0}) {
    return SliverPadding(
      key: key,
      padding: EdgeInsets.symmetric(horizontal: horz, vertical: vert),
      sliver: this,
    );
  }

  /// Add padding for specific sides
  ///
  /// [left] is the left padding value
  ///
  /// [top] is the top padding value
  ///
  /// [right] is the right padding value
  ///
  /// [bottom] is the bottom padding value
  ///
  /// By default, the [left], [top], [right], and [bottom] is 0.0
  ///
  /// as a shorthand for EdgeInsets.only
  ///
  Widget gapOnly({
    Key? key,
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) {
    return Padding(
      key: key,
      padding: EdgeInsets.only(
        left: left,
        top: top,
        right: right,
        bottom: bottom,
      ),
      child: this,
    );
  }

  /// Add padding for specific sides
  ///
  /// [left] is the left padding value
  ///
  /// [top] is the top padding value
  ///
  /// [right] is the right padding value
  ///
  /// [bottom] is the bottom padding value
  ///
  /// By default, the [left], [top], [right], and [bottom] is 0.0
  ///
  /// as a shorthand for EdgeInsets.only but for sliver
  ///
  Widget sliverGapOnly({
    Key? key,
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) {
    return SliverPadding(
      key: key,
      padding: EdgeInsets.only(
        left: left,
        top: top,
        right: right,
        bottom: bottom,
      ),
      sliver: this,
    );
  }

  /// Add padding from the left, top, right, and bottom
  ///
  /// [left] is the left padding value
  ///
  /// [top] is the top padding value
  ///
  /// [right] is the right padding value
  ///
  /// [bottom] is the bottom padding value
  ///
  /// as a shorthand for EdgeInsets.fromLTRB
  ///
  Widget gapLTRB(double? left, double? top, double? right, double? bottom,
      {Key? key}) {
    return Padding(
      key: key,
      padding: EdgeInsets.fromLTRB(
        left ?? Gap.m,
        top ?? Gap.m,
        right ?? Gap.m,
        bottom ?? Gap.m,
      ),
      child: this,
    );
  }

  /// Add padding from the left, top, right, and bottom
  ///
  /// [left] is the left padding value
  ///
  /// [top] is the top padding value
  ///
  /// [right] is the right padding value
  ///
  /// [bottom] is the bottom padding value
  ///
  /// as a shorthand for EdgeInsets.fromLTRB but for sliver
  ///
  Widget sliverGapLTRB(double? left, double? top, double? right, double? bottom,
      {Key? key}) {
    return SliverPadding(
      key: key,
      padding: EdgeInsets.fromLTRB(
        left ?? Gap.m,
        top ?? Gap.m,
        right ?? Gap.m,
        bottom ?? Gap.m,
      ),
      sliver: this,
    );
  }
}
