import 'package:flutter/material.dart';

class AppColor {
  static MaterialColor getMaterialColor(Color color) {
    final int red = color.red;
    final int green = color.green;
    final int blue = color.blue;

    final Map<int, Color> shades = {
      50: Color.fromRGBO(red, green, blue, .1),
      100: Color.fromRGBO(red, green, blue, .2),
      200: Color.fromRGBO(red, green, blue, .3),
      300: Color.fromRGBO(red, green, blue, .4),
      400: Color.fromRGBO(red, green, blue, .5),
      500: Color.fromRGBO(red, green, blue, .6),
      600: Color.fromRGBO(red, green, blue, .7),
      700: Color.fromRGBO(red, green, blue, .8),
      800: Color.fromRGBO(red, green, blue, .9),
      900: Color.fromRGBO(red, green, blue, 1),
    };

    return MaterialColor(color.value, shades);
  }

  // static ColorScheme get light => const ColorScheme.light(
  //       primary: Color(0xFF4355B9),
  //       onPrimary: Color(0xFFFFFFFF),
  //       primaryContainer: Color(0xFFDEE0FF),
  //       onPrimaryContainer: Color(0xFF121314),
  //       secondary: Color(0xFF3C64AE),
  //       onSecondary: Color(0xFFFFFFFF),
  //       secondaryContainer: Color(0xFFD8E2FF),
  //       onSecondaryContainer: Color(0xFF121314),
  //       tertiary: Color(0xFF537577),
  //       onTertiary: Color(0xFFFFFFFF),
  //       tertiaryContainer: Color(0xFFA9D4D6),
  //       onTertiaryContainer: Color(0xFF0E1212),
  //       error: Color(0xFFBA1A1A),
  //       onError: Color(0xFFFFFFFF),
  //       errorContainer: Color(0xFFFFDAD6),
  //       onErrorContainer: Color(0xFF141212),
  //       surface: Color(0xFFF9FAFD),
  //       onSurface: Color(0xFF090909),
  //       surfaceContainerHighest: Color(0xFFE4E5EB),
  //       onSurfaceVariant: Color(0xFF111112),
  //       inverseSurface: Color(0xFF121215),
  //       onInverseSurface: Color(0xFFF5F5F5),
  //       outline: Color(0xFF7C7C7C),
  //       outlineVariant: Color(0xFFC8C8C8),
  //       shadow: Color(0xFF000000),
  //       scrim: Color(0xFF000000),
  //       inversePrimary: Color(0xFFDCE3FF),
  //       surfaceTint: Color(0xFF4355B9),
  //     );

  // static ColorScheme get dark => const ColorScheme.dark(
  //       primary: Color(0xFFBAC3FF),
  //       onPrimary: Color(0xFF121314),
  //       primaryContainer: Color(0xFF293CA0),
  //       onPrimaryContainer: Color(0xFFE6E9F8),
  //       secondary: Color(0xFFAEC6FF),
  //       onSecondary: Color(0xFF111314),
  //       secondaryContainer: Color(0xFF14448D),
  //       onSecondaryContainer: Color(0xFFE2EAF5),
  //       tertiary: Color(0xFFA9CDCF),
  //       onTertiary: Color(0xFF111414),
  //       tertiaryContainer: Color(0xFF2A4C4E),
  //       onTertiaryContainer: Color(0xFFE6EBEC),
  //       error: Color(0xFFFFB4AB),
  //       onError: Color(0xFF141211),
  //       errorContainer: Color(0xFF93000A),
  //       onErrorContainer: Color(0xFFF6DFE1),
  //       surface: Color(0xFF191A1D),
  //       onSurface: Color(0xFFECEDED),
  //       surfaceContainerHighest: Color(0xFF3F4046),
  //       onSurfaceVariant: Color(0xFFE0E1E1),
  //       inverseSurface: Color(0xFFFBFBFF),
  //       onInverseSurface: Color(0xFF131314),
  //       outline: Color(0xFF767D7D),
  //       outlineVariant: Color(0xFF2C2E2E),
  //       shadow: Color(0xFF000000),
  //       scrim: Color(0xFF000000),
  //       inversePrimary: Color(0xFF5E6277),
  //       surfaceTint: Color(0xFFBAC3FF),
  //     );
}
