import 'package:flutter/material.dart';

import 'theme_text.dart';

class AppTopbar {
  static AppBarTheme get light => AppBarTheme(
        titleTextStyle: AppTextStyle.light.titleLarge,
      );

  static AppBarTheme get dark => AppBarTheme(
        titleTextStyle: AppTextStyle.dark.titleLarge,
      );
}
