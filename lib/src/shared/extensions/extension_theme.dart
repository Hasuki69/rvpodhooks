import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  // ==================== Theme ==================== //

  /// Get the theme data
  ThemeData get theme => Theme.of(this);

  /// Get ColorScheme
  ColorScheme get color => theme.colorScheme;

  // ==================== Brightness ==================== //

  /// Check if the app is in dark mode
  bool get isDarkMode => theme.brightness == Brightness.dark;

  /// Check if the app is in light mode
  bool get isLightMode => theme.brightness == Brightness.light;

  // ==================== Text Theme ==================== //

  /// Get the textstyle
  TextTheme get textStyle => theme.textTheme;

  /// Get the Display Large text style
  TextStyle? get displayLarge => textStyle.displayLarge;

  /// Get the Display Medium text style
  TextStyle? get displayMedium => textStyle.displayMedium;

  /// Get the Display Small text style
  TextStyle? get displaySmall => textStyle.displaySmall;

  /// Get the Headline Large text style
  TextStyle? get headlineLarge => textStyle.headlineLarge;

  /// Get the Headline Medium text style
  TextStyle? get headlineMedium => textStyle.headlineMedium;

  /// Get the Headline Small text style
  TextStyle? get headlineSmall => textStyle.headlineSmall;

  /// Get the Title Large text style
  TextStyle? get titleLarge => textStyle.titleLarge;

  /// Get the Title Medium text style
  TextStyle? get titleMedium => textStyle.titleMedium;

  /// Get the Title Small text style
  TextStyle? get titleSmall => textStyle.titleSmall;

  /// Get the Body Large text style
  TextStyle? get bodyLarge => textStyle.bodyLarge;

  /// Get the Body Medium text style
  TextStyle? get bodyMedium => textStyle.bodyMedium;

  /// Get the Body Small text style
  TextStyle? get bodySmall => textStyle.bodySmall;

  /// Get the Label Large text style
  TextStyle? get labelLarge => textStyle.labelLarge;

  /// Get the Label Medium text style
  TextStyle? get labelMedium => textStyle.labelMedium;

  /// Get the Label Small text style
  TextStyle? get labelSmall => textStyle.labelSmall;
}
