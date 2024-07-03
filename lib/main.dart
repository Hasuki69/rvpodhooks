import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'src/app.dart';

void enableOverlay() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
}

void disableOverlay() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
}

void setDeviceOrientation({up = true, down = true, left = true, right = true}) {
  SystemChrome.setPreferredOrientations([
    if (up) DeviceOrientation.portraitUp,
    if (down) DeviceOrientation.portraitDown,
    if (left) DeviceOrientation.landscapeLeft,
    if (right) DeviceOrientation.landscapeRight,
  ]);
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setDeviceOrientation();

  runApp(
    const ProviderScope(child: MainApp()),
  );
}
