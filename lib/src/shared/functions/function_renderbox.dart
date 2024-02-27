import 'package:flutter/widgets.dart';

class RenderBoxModel {
  final Size size;
  final Offset offset;
  final RenderBox renderBox;

  RenderBoxModel({
    required this.size,
    required this.offset,
    required this.renderBox,
  });
}

RenderBoxModel getRenderBox(GlobalKey key) {
  if (key.currentState != null) {
    final RenderBox renderBox =
        key.currentContext!.findRenderObject() as RenderBox;

    final size = renderBox.size;
    final offset = renderBox.localToGlobal(Offset.zero);

    return RenderBoxModel(size: size, offset: offset, renderBox: renderBox);
  } else {
    throw Exception('The key is not attached to any widget');
  }
}
