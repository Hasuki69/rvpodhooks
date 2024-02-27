import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

extension ResponsiveFrameworkExtension on BuildContext {
  ResponsiveBreakpointsData get breakpoints => ResponsiveBreakpoints.of(this);

  // Comment this section if you want to use the device type without Responsive Framework
  // ==================== Device size based on Responsive Framework  ==================== //
  bool get isMobile => breakpoints.equals(MOBILE);
  bool get isTablet => breakpoints.equals(TABLET);
  bool get isLaptop => breakpoints.equals('LAPTOP');
  bool get isDesktop => breakpoints.equals(DESKTOP);
  bool get is2K => breakpoints.equals('2K');
  bool get is4K => breakpoints.equals('4K');
  bool get is8K => breakpoints.equals('8K');
  bool get isUndefinedSize => breakpoints.equals('UNDIFINED');

  bool get isHandheld => isMobile || isTablet;
  bool get isMonitor => isLaptop || isDesktop || is2K || is4K;
  bool get isTV => isDesktop || is2K || is4K || is8K;
}
