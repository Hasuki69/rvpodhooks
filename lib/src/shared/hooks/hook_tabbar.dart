import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

TabController useCTabController({
  required int length,
  void Function(int)? listen,
}) {
  final controller = useTabController(initialLength: length);

  useEffect(() {
    controller.addListener(() {
      if (listen != null) listen(controller.index);
    });

    return () => controller.removeListener(() {});
  }, [controller]);

  return controller;
}
