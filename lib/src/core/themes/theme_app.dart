import 'package:flutter/material.dart';

import 'theme_text.dart';

class AppTheme {
  static ThemeData get light => ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFFFFFF),
          dynamicSchemeVariant: DynamicSchemeVariant.monochrome,
        ),

        // Text Theme
        primaryTextTheme: AppTextStyle.light,
        textTheme: AppTextStyle.light,
      );

  static ThemeData get dark => ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF000000),
          brightness: Brightness.dark,
          dynamicSchemeVariant: DynamicSchemeVariant.monochrome,
        ),

        // Text Theme
        primaryTextTheme: AppTextStyle.dark,
        textTheme: AppTextStyle.dark,
      );
}
