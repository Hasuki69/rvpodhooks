import 'package:flutter/material.dart';

import '../core.dart';

class AppDivider {
  static DividerThemeData get style =>
      const DividerThemeData(space: .1, thickness: .5);

  static DividerThemeData get light => style.copyWith(
        color: AppColor.light.onSurface.withOpacity(.5),
      );

  static DividerThemeData get dark => style.copyWith(
        color: AppColor.dark.onSurface.withOpacity(.5),
      );
}
