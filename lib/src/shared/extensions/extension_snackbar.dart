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
    required String message,
    Duration duration = const Duration(seconds: 3),
    SnackBarAction? action,
    EdgeInsetsGeometry? padding,
    Widget? content,
    Color? backgroundColor,
    bool isError = false,
  }) {
    return ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        padding: padding,
        duration: duration,
        action: action,
        backgroundColor:
            backgroundColor ?? (isError ? Colors.red[400] : Colors.green[400]),
        content: content ?? Text(message),
      ),
    );
  }
}
