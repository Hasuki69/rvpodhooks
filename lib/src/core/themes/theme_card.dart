import 'package:flutter/material.dart';

class AppCard {
  static CardTheme get light => const CardTheme(
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.zero,
        elevation: 4,
      );

  static CardTheme get dark => const CardTheme(
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.zero,
        elevation: 4,
      );
}
