import 'package:flutter/material.dart';

import '../core.dart';

class AppSlider {
  static SliderThemeData get light => SliderThemeData(
        // Thumb Shape
        thumbShape:
            const RoundSliderThumbShape(elevation: 0, pressedElevation: 0),
        rangeThumbShape:
            const RoundRangeSliderThumbShape(elevation: 0, pressedElevation: 0),

        // Overlap Shape Stroke
        overlappingShapeStrokeColor: Colors.transparent,

        // Overlay Shape & Color
        overlayColor: Colors.transparent,
        overlayShape: const RoundSliderOverlayShape(overlayRadius: 0),

        inactiveTrackColor: AppColor.light.onBackground.withOpacity(.1),

        // Thumb Shape
        thumbColor: Colors.transparent,
        disabledThumbColor: Colors.transparent,
      );

  static SliderThemeData get dark => SliderThemeData(
        // Thumb Shape
        thumbShape:
            const RoundSliderThumbShape(elevation: 0, pressedElevation: 0),
        rangeThumbShape:
            const RoundRangeSliderThumbShape(elevation: 0, pressedElevation: 0),

        // Overlap Shape Stroke
        overlappingShapeStrokeColor: Colors.transparent,

        // Overlay Shape & Color
        overlayColor: Colors.transparent,
        overlayShape: const RoundSliderOverlayShape(overlayRadius: 0),

        inactiveTrackColor: AppColor.dark.onBackground.withOpacity(.1),

        // Thumb Shape
        thumbColor: Colors.transparent,
        disabledThumbColor: Colors.transparent,
      );
}
