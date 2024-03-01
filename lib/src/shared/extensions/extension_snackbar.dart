import 'package:flutter/material.dart';

/// Extension for [BuildContext] to show a snackbar
extension SnackbarExtension on BuildContext {
  /// Show a snackbar
  ///
  /// [message] is the message to be displayed
  ///
  /// [duration] is the duration of the snackbar
  ///
  /// [action] is the action of the snackbar
  ///
  /// [padding] is the padding of the snackbar
  ///
  /// [content] is the content of the snackbar
  ///
  /// [backgroundColor] is the background color of the snackbar
  ///
  /// By default, the [duration] is 3 seconds
  ///
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> snackbar({
    Key? key,
    Widget? content,
    String? message,
    TextStyle? style,
    TextAlign? textAlign = TextAlign.center,
    Color? backgroundColor,
    double? elevation,
    EdgeInsetsGeometry? margin,
    EdgeInsetsGeometry? padding,
    double? width,
    ShapeBorder? shape,
    HitTestBehavior? hitTestBehavior,
    SnackBarBehavior? behavior = SnackBarBehavior.floating,
    SnackBarAction? action,
    double? actionOverflowThreshold,
    bool? showCloseIcon,
    Color? closeIconColor,
    Duration duration = const Duration(seconds: 3),
    Animation<double>? animation,
    void Function()? onVisible,
    DismissDirection? dismissDirection,
    Clip clipBehavior = Clip.antiAlias,
  }) {
    return ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        key: key,
        content: content ??
            Text(
              message ?? '',
              style: style,
              textAlign: textAlign,
            ),
        backgroundColor: backgroundColor,
        elevation: elevation,
        margin: margin,
        padding: padding,
        width: width,
        shape: shape,
        action: action,
        actionOverflowThreshold: actionOverflowThreshold,
        duration: duration,
        animation: animation,
        onVisible: onVisible,
        dismissDirection: dismissDirection,
        behavior: behavior,
        clipBehavior: clipBehavior,
        hitTestBehavior: hitTestBehavior,
        showCloseIcon: showCloseIcon,
        closeIconColor: closeIconColor,
      ),
    );
  }
}
