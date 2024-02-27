import 'package:flutter/material.dart';

extension MediaQueryExtension on BuildContext {
  /// Get the media query data
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  /// Get the size of the device
  Size get size => MediaQuery.sizeOf(this);

  // ==================== Device Sizes ==================== //

  /// Get the width of the device
  double get width => size.width;

  /// Get the height of the device
  double get height => size.height;

  /// Get the device pixel ratio
  double get pixelRatio => mediaQuery.devicePixelRatio;

  /// Get the device aspect ratio
  double get aspectRatio => size.aspectRatio;

  /// Get the device shortest side
  double get shortestSide => size.shortestSide;

  /// Get the device longest side
  double get longestSide => size.longestSide;

  // ==================== Platform Mode ==================== //

  /// Check if the device is in dark mode
  bool get platformIsDarkMode =>
      mediaQuery.platformBrightness == Brightness.dark;

  /// Check if the device is in light mode
  bool get platformIsLightMode =>
      mediaQuery.platformBrightness == Brightness.light;

  // ==================== Orientation ==================== //

  /// Check if the device is in landscape mode
  bool get isLandscape => mediaQuery.orientation == Orientation.landscape;

  /// Check if the device is in portrait mode
  bool get isPortrait => mediaQuery.orientation == Orientation.portrait;

  // ==================== Responsive Margin ==================== //

  /// Get responsive horizontal margin (5% of the width)
  EdgeInsets get horzMargin => EdgeInsets.symmetric(horizontal: width * 0.05);

  /// Get responsive vertical margin (5% of the height)
  EdgeInsets get vertMargin => EdgeInsets.symmetric(vertical: height * 0.05);

  /// Get responsive margin (5% of the width)
  EdgeInsets get margin => EdgeInsets.all(width * 0.05);

  // ==================== System Sizes ==================== //

  /// Get size of the system overlay
  double get systemOverlaySize => mediaQuery.systemGestureInsets.bottom;

  /// Get the size of the status bar
  double get statusBarSize => mediaQuery.padding.top;

  // ==================== Padding ==================== //

  /// Get the padding of the device
  EdgeInsets get padding => mediaQuery.padding;

  /// Get the view padding of the device
  EdgeInsets get viewPadding => mediaQuery.viewPadding;

  /// Get the view insets of the device
  EdgeInsets get viewInsets => mediaQuery.viewInsets;

  /* Uncomment this section if you want to use the device type without Responsive Framework

    // ==================== Device Type ==================== //

    /// Check if the device is a mobile device
    bool get isMobile => width <= 480;

    /// Check if the device is a small tablet
    bool get isSmallTablet => width > 480 && width <= 600;

    /// Check if the device is a large tablet
    bool get isLargeTablet => width > 600 && width <= 900;

    /// Check if the device is a tablet
    bool get isTablet => isSmallTablet || isLargeTablet;

    /// Check if the device is a small laptop
    bool get isSmallLaptop => width > 900 && width <= 1200;

    /// Check if the device is a large laptop
    bool get isLargeLaptop => width > 1200 && width <= 1440;

    /// Check if the device is a laptop
    bool get isLaptop => isSmallLaptop || isLargeLaptop;

    /// Check if the device is a small desktop
    bool get isSmallDesktop => width > 1440 && width <= 1600;

    /// Check if the device is a large desktop
    bool get isLargeDesktop => width > 1600 && width <= 1920;

    /// Check if the device is a desktop
    bool get isDesktop => isSmallDesktop || isLargeDesktop;

    /// Check if the device is 2K
    bool get is2K => width > 1920 && width <= 2560;

    /// Check if the device is 4K
    bool get is4K => width > 2560 && width <= 3840;

    /// Check if the device is 8K
    bool get is8K => width > 3840;

  */

  // ==================== Other ==================== //

  /// Get the text scale factor
  TextScaler get textScale => mediaQuery.textScaler;

  /// Get bottom navigation bar height
  double get navbarHeight => kBottomNavigationBarHeight;

  /// Get top navigation bar height
  double get appbarHeight => kToolbarHeight;

  /// Check if using 24-hour format
  bool get is24hFormat => mediaQuery.alwaysUse24HourFormat;

  /// Check if inverting colors
  bool get isInvertColors => mediaQuery.invertColors;

  /// Check if animation is disabled
  bool get isDisableAnimations => mediaQuery.disableAnimations;

  /// Check if accessible navigation is enabled
  bool get isAccessibleNavigation => mediaQuery.accessibleNavigation;
}
