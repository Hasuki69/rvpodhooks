import 'package:flutter/material.dart';
import '../../core/core.dart';

class AppButtonStyle {
  static ButtonStyle get style => ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.padded,
        textStyle: WidgetStatePropertyAll(AppTextStyle.titleSmall),
      );

  // ElevatedButtonThemeData
  static ElevatedButtonThemeData get elevatedLight =>
      ElevatedButtonThemeData(style: style);

  static ElevatedButtonThemeData get elevatedDark =>
      ElevatedButtonThemeData(style: style);

  // FilledButtonThemeData
  static FilledButtonThemeData get filledLight =>
      FilledButtonThemeData(style: style);

  static FilledButtonThemeData get filledDark =>
      FilledButtonThemeData(style: style);

  // OutlinedButtonThemeData
  static OutlinedButtonThemeData get outlineLight =>
      OutlinedButtonThemeData(style: style);

  static OutlinedButtonThemeData get outlineDark =>
      OutlinedButtonThemeData(style: style);

  // TextButtonThemeData
  static TextButtonThemeData get textLight => TextButtonThemeData(style: style);

  static TextButtonThemeData get textDark => TextButtonThemeData(style: style);

  // IconButtonThemeData
  static IconButtonThemeData get iconLight => IconButtonThemeData(style: style);

  static IconButtonThemeData get iconDark => IconButtonThemeData(style: style);

  // 
}
