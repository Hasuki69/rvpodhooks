import 'package:flutter/material.dart';

extension BottomsheetExtension on BuildContext {
  ///  Bottom Sheet in Context
  /// [child] is the widget that will be displayed in the bottom sheet
  ///
  /// [builder] is the builder that will be displayed in the bottom sheet
  ///
  /// [backgroundColor] is the background color of the bottom sheet
  ///
  /// [barrierLabel] is the semantic label used by screen readers to identify the barrier
  ///
  /// [elevation] is the z-coordinate at which to place the bottom sheet
  ///
  /// [shape] is the shape of the bottom sheet
  ///
  /// [clipBehavior] is the clip behavior of the bottom sheet
  ///
  /// [constraints] is the constraints of the bottom sheet
  ///
  /// [barrierColor] is the color of the barrier
  ///
  /// [isScrollControlled] is whether the bottom sheet is scroll controlled
  ///
  /// [useRootNavigator] is whether the bottom sheet is displayed on the root navigator
  ///
  /// [isDismissible] is whether the bottom sheet can be dismissed
  ///
  /// [enableDrag] is whether the bottom sheet can be dragged
  ///
  /// [showDragHandle] is whether the bottom sheet can be dragged
  ///
  /// [useSafeArea] is whether the bottom sheet should only display in 'safe' areas on the screen
  ///
  /// [routeSettings] is the settings for the route of the bottom sheet
  ///
  /// [transitionAnimationController] is the animation controller for the transition of the bottom sheet
  ///
  /// [anchorPoint] is the point at which the bottom sheet will be anchored
  ///
  /// By default, [useRootNavigator] is false, [isDismissible] is true, [enableDrag] is true, and [showDragHandle] is true
  ///
  Future<T?> bottomSheet<T>({
    required Widget child,
    Color? backgroundColor,
    String? barrierLabel,
    double? elevation,
    ShapeBorder? shape,
    Clip? clipBehavior,
    BoxConstraints? constraints,
    Color? barrierColor,
    bool isScrollControlled = false,
    bool useRootNavigator = false,
    bool isDismissible = false,
    bool enableDrag = true,
    bool showDragHandle = true,
    bool useSafeArea = false,
    RouteSettings? routeSettings,
    AnimationController? transitionAnimationController,
    Offset? anchorPoint,
  }) {
    return showModalBottomSheet(
      context: this,
      backgroundColor: backgroundColor,
      barrierLabel: barrierLabel,
      elevation: elevation,
      shape: shape,
      clipBehavior: clipBehavior,
      constraints: constraints,
      barrierColor: barrierColor,
      isScrollControlled: isScrollControlled,
      useRootNavigator: useRootNavigator,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      showDragHandle: showDragHandle,
      useSafeArea: useSafeArea,
      routeSettings: routeSettings,
      transitionAnimationController: transitionAnimationController,
      anchorPoint: anchorPoint,
      builder: (context) => child,
    );
  }
}
