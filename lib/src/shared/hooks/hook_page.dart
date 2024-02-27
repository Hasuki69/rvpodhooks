import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

PageController useCPageController({
  int initialPage = 0,
  bool keepPage = true,
  double viewportFraction = 1.0,
  void Function(int)? listen,
}) {
  final controller = usePageController(
    initialPage: initialPage,
    keepPage: keepPage,
    viewportFraction: viewportFraction,
  );

  useEffect(() {
    controller.addListener(() {
      if (listen != null) listen(controller.page!.round());
    });

    return () => controller.removeListener(() {});
  }, [controller]);

  return controller;
}
