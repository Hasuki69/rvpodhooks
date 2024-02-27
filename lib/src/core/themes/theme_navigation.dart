import 'package:flutter/material.dart';

import '../core.dart';

class AppNavigation {
  static NavigationRailThemeData get railLight => NavigationRailThemeData(
        unselectedLabelTextStyle: AppTextStyle.light.labelSmall,
        selectedLabelTextStyle: AppTextStyle.light.labelSmall,
      );

  static NavigationRailThemeData get railDark => NavigationRailThemeData(
        unselectedLabelTextStyle: AppTextStyle.dark.labelSmall,
        selectedLabelTextStyle: AppTextStyle.dark.labelSmall,
      );

  static NavigationBarThemeData get barLight => NavigationBarThemeData(
        labelTextStyle:
            MaterialStatePropertyAll(AppTextStyle.light.labelMedium),
      );

  static NavigationBarThemeData get barDark => NavigationBarThemeData(
        labelTextStyle: MaterialStatePropertyAll(AppTextStyle.dark.labelMedium),
      );
}
