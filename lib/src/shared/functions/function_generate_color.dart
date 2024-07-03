import 'dart:math';

import 'package:flutter/material.dart';

Color getRandomColor({int opacity = 255}) {
  Random random = Random();
  return Color.fromARGB(opacity, random.nextInt(256), random.nextInt(256), random.nextInt(256));
}
