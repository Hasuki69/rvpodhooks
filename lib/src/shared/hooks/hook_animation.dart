import 'package:flutter_hooks/flutter_hooks.dart';

double useCAnimation({Duration duration = const Duration(milliseconds: 600)}) {
  final controller = useAnimationController(duration: duration);

  useEffect(() {
    controller.forward();
    return null;
  }, [controller]);

  useAnimation(controller);
  return controller.value;
}
