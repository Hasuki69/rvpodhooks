import 'package:flutter/material.dart';

import 'theme_button.dart';
import 'theme_card.dart';
import 'theme_color.dart';
import 'theme_navigation.dart';
import 'theme_text.dart';
import 'theme_divider.dart';
import 'theme_topbar.dart';

class AppTheme {
  static ThemeData get light => ThemeData(
        colorScheme: AppColor.light,

        // Text Theme
        primaryTextTheme: AppTextStyle.light,
        textTheme: AppTextStyle.light,

        // Button Theme
        elevatedButtonTheme: AppButtonStyle.elevatedLight,
        filledButtonTheme: AppButtonStyle.filledLight,
        outlinedButtonTheme: AppButtonStyle.outlineLight,
        textButtonTheme: AppButtonStyle.textLight,
        iconButtonTheme: AppButtonStyle.iconLight,

        // Card Theme
        cardTheme: AppCard.light,

        // Divider Theme
        dividerTheme: AppDivider.style,

        // AppBar Theme
        appBarTheme: AppTopbar.light,

        // Navigation Theme
        navigationBarTheme: AppNavigation.barLight,
        navigationRailTheme: AppNavigation.railLight,
      );

  static ThemeData get dark => ThemeData(
        colorScheme: AppColor.dark,

        // Text Theme
        primaryTextTheme: AppTextStyle.dark,
        textTheme: AppTextStyle.dark,

        // Button Theme
        elevatedButtonTheme: AppButtonStyle.elevatedDark,
        filledButtonTheme: AppButtonStyle.filledDark,
        outlinedButtonTheme: AppButtonStyle.outlineDark,
        textButtonTheme: AppButtonStyle.textDark,
        iconButtonTheme: AppButtonStyle.iconDark,

        // Card Theme
        cardTheme: AppCard.dark,

        // Divider Theme
        dividerTheme: AppDivider.style,

        // AppBar Theme
        appBarTheme: AppTopbar.dark,

        // Navigation Theme
        navigationBarTheme: AppNavigation.barDark,
        navigationRailTheme: AppNavigation.railDark,
      );
}
