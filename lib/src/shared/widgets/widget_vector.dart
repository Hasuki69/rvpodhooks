import 'package:flutter/material.dart';
import 'package:vector_graphics/vector_graphics.dart';

class CSVGLoader extends StatelessWidget {
  final String path;
  final Color? color;
  final BoxFit fit;
  final double? width;
  final double? height;
  final BlendMode blendMode;
  final Clip clipBehavior;
  final Alignment alignment;
  const CSVGLoader(
    this.path, {
    super.key,
    this.color,
    this.width,
    this.height,
    this.blendMode = BlendMode.srcIn,
    this.alignment = Alignment.center,
    this.fit = BoxFit.contain,
    this.clipBehavior = Clip.antiAlias,
  });

  @override
  Widget build(BuildContext context) {
    return VectorGraphic(
      fit: fit,
      width: width,
      height: height,
      alignment: alignment,
      clipBehavior: clipBehavior,
      loader: AssetBytesLoader(path),
      colorFilter: color == null ? null : ColorFilter.mode(color!, blendMode),
    );
  }
}
