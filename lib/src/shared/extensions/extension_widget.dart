import 'package:flutter/material.dart';

/// Flip the child widget along the horizontal or vertical axis.
///
/// Used on [Transform.flip] shortcut => [Widget.flip]
///
enum FlipAxis { vert, horz, both }

extension WidgetExtension on Widget {
  /// A widget that centers its child within itself.
  ///
  /// Shortcut for [Center].
  ///
  Widget center({Key? key, double? widthFactor, double? heightFactor}) =>
      Center(
        key: key,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
        child: this,
      );

  /// A widget that expands a child of a [Row], [Column], or [Flex] so that the child fills the available space along the flex widget's main axis.
  ///
  /// Shortcut for [Expanded].
  ///
  Widget expanded({Key? key, int flex = 1}) => Expanded(
        key: key,
        flex: flex,
        child: this,
      );

  /// Creates an alignment widget.
  ///
  /// The alignment defaults to [Alignment.center].
  ///
  /// Shortcut for [Align].
  ///
  Widget align({
    Key? key,
    double? widthFactor,
    double? heightFactor,
    AlignmentGeometry alignment = Alignment.center,
  }) =>
      Align(
        key: key,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
        alignment: alignment,
        child: this,
      );

  /// Creates an alignment widget with the alignment set to [Alignment.topCenter].
  ///
  Widget alignTop({Key? key, double? widthFactor, double? heightFactor}) =>
      Align(
        key: key,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
        alignment: Alignment.topCenter,
        child: this,
      );

  /// Creates an alignment widget with the alignment set to [Alignment.topLeft].
  ///
  Widget alignTopLeft({Key? key, double? widthFactor, double? heightFactor}) =>
      Align(
        key: key,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
        alignment: Alignment.topLeft,
        child: this,
      );

  /// Creates an alignment widget with the alignment set to [Alignment.topRight].
  ///
  Widget alignTopRight({Key? key, double? widthFactor, double? heightFactor}) =>
      Align(
        key: key,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
        alignment: Alignment.topRight,
        child: this,
      );

  /// Creates an alignment widget with the alignment set to [Alignment.bottomCenter].
  ///
  Widget alignBottom({Key? key, double? widthFactor, double? heightFactor}) =>
      Align(
        key: key,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
        alignment: Alignment.bottomCenter,
        child: this,
      );

  /// Creates an alignment widget with the alignment set to [Alignment.bottomLeft].
  ///
  Widget alignBottomLeft(
          {Key? key, double? widthFactor, double? heightFactor}) =>
      Align(
        key: key,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
        alignment: Alignment.bottomLeft,
        child: this,
      );

  /// Creates an alignment widget with the alignment set to [Alignment.bottomRight].
  ///
  Widget alignBottomRight(
          {Key? key, double? widthFactor, double? heightFactor}) =>
      Align(
        key: key,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
        alignment: Alignment.bottomRight,
        child: this,
      );

  /// Creates an alignment widget with the alignment set to [Alignment.centerLeft].
  ///
  Widget alignLeft({Key? key, double? widthFactor, double? heightFactor}) =>
      Align(
        key: key,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
        alignment: Alignment.centerLeft,
        child: this,
      );

  /// Creates an alignment widget with the alignment set to [Alignment.centerRight].
  ///
  Widget alignRight({Key? key, double? widthFactor, double? heightFactor}) =>
      Align(
        key: key,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
        alignment: Alignment.centerRight,
        child: this,
      );

  /// A widget that applies a [Transform] to its child.
  ///
  /// Shortcut for [Transform].
  ///
  Widget transform({
    Key? key,
    required Matrix4 transform,
    Offset? origin,
    AlignmentGeometry? alignment = Alignment.center,
    bool transformHitTests = true,
    FilterQuality? filterQuality,
  }) =>
      Transform(
        key: key,
        transform: transform,
        origin: origin,
        alignment: alignment,
        transformHitTests: transformHitTests,
        filterQuality: filterQuality,
        child: this,
      );

  /// A widget that applies a [Transform.scale] transformation to its child.
  ///
  /// Shortcut for [Transform.scale].
  ///
  Widget scale({
    Key? key,
    double? scale,
    double? scaleX,
    double? scaleY,
    Offset? origin,
    AlignmentGeometry? alignment = Alignment.center,
    bool transformHitTests = true,
    FilterQuality? filterQuality,
  }) =>
      Transform.scale(
        key: key,
        scale: scale,
        scaleX: scaleX,
        scaleY: scaleY,
        origin: origin,
        alignment: alignment,
        transformHitTests: transformHitTests,
        child: this,
      );

  /// A widget that applies a [Transform.rotate] transformation to its child.
  ///
  /// Shortcut for [Transform.rotate].
  ///
  Widget rotate({
    Key? key,
    required double angle,
    Offset? origin,
    AlignmentGeometry? alignment = Alignment.center,
    bool transformHitTests = true,
    FilterQuality? filterQuality,
  }) =>
      Transform.rotate(
        key: key,
        angle: angle,
        origin: origin,
        alignment: alignment,
        transformHitTests: transformHitTests,
        filterQuality: filterQuality,
        child: this,
      );

  /// A widget that applies a [Transform.translate] transformation to its child.
  ///
  /// Shortcut for [Transform.translate].
  ///
  Widget translate({
    Key? key,
    required Offset offset,
    bool transformHitTests = true,
    FilterQuality? filterQuality,
  }) =>
      Transform.translate(
        key: key,
        offset: offset,
        transformHitTests: transformHitTests,
        filterQuality: filterQuality,
        child: this,
      );

  /// A widget that flips its child along the horizontal or vertical axis.
  ///
  /// Shortcut for [Transform.flip].
  ///
  ///
  Widget flip({
    Key? key,
    required FlipAxis flip,
    Offset? origin,
    bool transformHitTests = true,
    FilterQuality? filterQuality,
  }) =>
      Transform.flip(
        key: key,
        flipX: flip == FlipAxis.horz || flip == FlipAxis.both,
        flipY: flip == FlipAxis.vert || flip == FlipAxis.both,
        origin: origin,
        transformHitTests: transformHitTests,
        filterQuality: filterQuality,
        child: this,
      );

      /// A widget that applies a [Opacity] to its child.
  /// The opacity applies to the child and the child's subtree.
  ///
  /// Shortcut for [Opacity].
  ///
  Widget opacity({
    Key? key,
    required double opacity,
    bool alwaysIncludeSemantics = false,
  }) =>
      Opacity(
        key: key,
        opacity: opacity,
        alwaysIncludeSemantics: alwaysIncludeSemantics,
        child: this,
      );

  /// A widget that applies a [AspectRatio] to its child.
  ///
  /// Shortcut for [AspectRatio].
  ///
  Widget ratio(double aspectRatio, {Key? key}) => AspectRatio(
        key: key,
        aspectRatio: aspectRatio,
        child: this,
      );
}
