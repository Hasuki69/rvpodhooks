import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'src/app.dart';
import 'src/preload_app.dart';

void setDeviceOrientation() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setDeviceOrientation();

  runApp(
    const ProviderScope(
      child: PreloadApp(child: MainApp()),
    ),
  );
}
