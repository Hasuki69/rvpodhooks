import 'package:flutter/material.dart';

extension DialogExtension on BuildContext {
  // ==================== Dialog ==================== //

  /// Show a dialog
  /// [child] is the widget that will be displayed in the dialog
  ///
  /// [barrierDismissible] is whether the dialog can be closed by tapping outside the dialog
  ///
  /// [barrierColor] is the color of the barrier
  ///
  /// [barrierLabel] is the semantic label used by screen readers to identify the barrier
  ///
  /// [useSafeArea] is whether the dialog should only display in 'safe' areas on the screen
  ///
  /// [useRootNavigator] is whether the dialog is displayed on the root navigator
  ///
  /// [routeSettings] is the settings for the route of the dialog
  ///
  /// [anchorPoint] is the point at which the dialog will be anchored
  ///
  /// [traversalEdgeBehavior] is the behavior when the dialog is traversed
  ///
  /// By default, [barrierDismissible] is false, [useSafeArea] is true, and [useRootNavigator] is true
  ///
  Future<T?> dialog<T>({
    required Widget child,
    bool barrierDismissible = false,
    Color? barrierColor,
    String? barrierLabel,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
    Offset? anchorPoint,
    TraversalEdgeBehavior? traversalEdgeBehavior,
  }) {
    return showDialog<T>(
      context: this,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      barrierLabel: barrierLabel,
      useSafeArea: useSafeArea,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
      anchorPoint: anchorPoint,
      traversalEdgeBehavior: traversalEdgeBehavior,
      builder: (context) => child,
    );
  }

  /// Show a loading dialog
  Future<T?> loading<T>({
    Widget? loadingWidget,
  }) {
    return dialog(
      child: Center(
        child: loadingWidget ?? const CircularProgressIndicator(),
      ),
    );
  }

  // ==================== DatePicker ==================== //

  /// Show a DatePicker dialog
  /// [initialDate] is the initial date of the date picker
  ///
  /// [firstDate] is the first date of the date picker
  ///
  /// [lastDate] is the last date of the date picker
  ///
  /// [currentDate] is the current date of the date picker
  ///
  /// [initialEntryMode] is the initial entry mode of the date picker
  ///
  /// [routeSettings] is the settings for the route of the date picker
  ///
  /// [helpText] is the help text of the date picker
  ///
  /// [cancelText] is the cancel text of the date picker
  ///
  /// [confirmText] is the confirm text of the date picker
  ///
  /// [locale] is the locale of the date picker
  ///
  /// [useRootNavigator] is whether the date picker is displayed on the root navigator
  ///
  /// [barrierDismissible] is whether the date picker can be closed by tapping outside the date picker
  ///
  /// [barrierColor] is the color of the barrier
  ///
  /// [barrierLabel] is the semantic label used by screen readers to identify the barrier
  ///
  /// [textDirection] is the text direction of the date picker
  ///
  /// [initialDatePickerMode] is the initial date picker mode of the date picker
  ///
  /// [errorFormatText] is the error format text of the date picker
  ///
  /// [errorInvalidText] is the error invalid text of the date picker
  ///
  /// [fieldLabelText] is the field label text of the date picker
  ///
  /// [fieldHintText] is the field hint text of the date picker
  ///
  /// [keyboardType] is the keyboard type of the date picker
  ///
  /// [builder] is the builder of the date picker
  ///
  /// [onDatePickerModeChange] is the function when the date picker mode changes
  ///
  /// [selectableDayPredicate] is the predicate for determining whether a day is selectable
  ///
  /// [anchorPoint] is the point at which the date picker will be anchored
  ///
  /// [switchToCalendarEntryModeIcon] is the icon to switch to the calendar entry mode
  ///
  /// [switchToInputEntryModeIcon] is the icon to switch to the input entry mode
  ///
  /// By default, [useRootNavigator] is true, and [barrierDismissible] is false
  ///
  Future<DateTime> datePicker({
    DateTime? initialDate,
    DateTime? firstDate,
    DateTime? lastDate,
    DateTime? currentDate,
    DatePickerEntryMode initialEntryMode = DatePickerEntryMode.calendarOnly,
    RouteSettings? routeSettings,
    String? helpText,
    String? cancelText,
    String? confirmText,
    Locale? locale,
    bool useRootNavigator = true,
    bool barrierDismissible = false,
    Color? barrierColor,
    String? barrierLabel,
    TextDirection? textDirection,
    DatePickerMode initialDatePickerMode = DatePickerMode.day,
    String? errorFormatText,
    String? errorInvalidText,
    String? fieldLabelText,
    String? fieldHintText,
    TextInputType? keyboardType,
    Widget Function(BuildContext, Widget?)? builder,
    Function(DatePickerEntryMode)? onDatePickerModeChange,
    SelectableDayPredicate? selectableDayPredicate,
    Offset? anchorPoint,
    Icon? switchToCalendarEntryModeIcon,
    Icon? switchToInputEntryModeIcon,
  }) async {
    var now = DateTime.now();
    DateTime? picked = await showDatePicker(
      context: this,
      initialDate: initialDate ?? now,
      firstDate: firstDate ?? DateTime(now.year - 100),
      lastDate: lastDate ?? DateTime(now.year + 10),
      currentDate: currentDate ?? now,
      initialEntryMode: initialEntryMode,
      helpText: helpText,
      cancelText: cancelText,
      confirmText: confirmText,
      locale: locale,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      barrierLabel: barrierLabel,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
      textDirection: textDirection,
      initialDatePickerMode: initialDatePickerMode,
      errorFormatText: errorFormatText,
      errorInvalidText: errorInvalidText,
      fieldLabelText: fieldLabelText,
      fieldHintText: fieldHintText,
      keyboardType: keyboardType,
      anchorPoint: anchorPoint,
      onDatePickerModeChange: onDatePickerModeChange,
      switchToCalendarEntryModeIcon: switchToCalendarEntryModeIcon,
      switchToInputEntryModeIcon: switchToInputEntryModeIcon,
      selectableDayPredicate: selectableDayPredicate,
      builder: builder,
    );
    if (picked != null) {
      return picked;
    } else {
      return initialDate ?? now;
    }
  }
}
