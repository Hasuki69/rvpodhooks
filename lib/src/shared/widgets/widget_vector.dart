import 'package:flutter/material.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../extensions/extensions.dart';

class CSVGLoader extends StatelessWidget {
  final String path;
  final ColorFilter? colorFilter;
  final Color? color;
  final BlendMode blendMode;
  final bool useVectorColor;
  final BoxFit fit;
  const CSVGLoader(
    this.path, {
    super.key,
    this.colorFilter,
    this.color,
    this.blendMode = BlendMode.srcIn,
    this.useVectorColor = false,
    this.fit = BoxFit.scaleDown,
  });

  ColorFilter? checkFilter(BuildContext context, bool useVectorColor) {
    return useVectorColor
        ? null
        : ColorFilter.mode(
            color ?? context.color.onSurface,
            blendMode,
          );
  }

  @override
  Widget build(BuildContext context) {
    return VectorGraphic(
      fit: fit,
      loader: AssetBytesLoader(path),
      colorFilter: colorFilter ?? checkFilter(context, useVectorColor),
    );
  }
}
