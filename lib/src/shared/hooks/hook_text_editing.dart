import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

TextEditingController useCTextController({
  String? text,
  void Function(String)? listen,
}) {
  final controller = useTextEditingController(text: text);

  useEffect(() {
    controller.addListener(() {
      if (listen != null) listen(controller.text);
    });

    return () => controller.removeListener(() {});
  }, [controller]);

  return controller;
}
