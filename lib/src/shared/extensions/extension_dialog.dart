import 'package:flutter/material.dart';

extension DialogExtension on BuildContext {
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

  Future<T?> loading<T>({
    Key? key,
    Widget? loadingWidget,
  }) {
    return dialog(
      child: Center(
        key: key,
        child: loadingWidget ?? const CircularProgressIndicator(),
      ),
    );
  }

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
