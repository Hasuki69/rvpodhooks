import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

// import '../../../src/shared/shared.dart';

class BreakpointBuilder extends StatelessWidget {
  final Widget child;
  const BreakpointBuilder({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBreakpoints.builder(
      child: child,
      breakpoints: const [
        Breakpoint(start: 0, end: 480, name: MOBILE),
        Breakpoint(start: 481, end: 900, name: TABLET),
        Breakpoint(start: 901, end: 1440, name: 'LAPTOP'),
        Breakpoint(start: 1441, end: 1920, name: DESKTOP),
        Breakpoint(start: 1921, end: 2560, name: '2K'),
        Breakpoint(start: 2561, end: 3840, name: '4K'),
        Breakpoint(start: 3841, end: 7680, name: '8K'),
        Breakpoint(start: 7681, end: double.infinity, name: 'UNDIFINED'),
      ],
    );
  }
}

class BoxWidth extends StatelessWidget {
  final double? maxWidth;
  final Widget child;
  final Color? backgroundColor;
  const BoxWidth({
    super.key,
    this.maxWidth = double.maxFinite,
    required this.child,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return MaxWidthBox(
      background: Container(color: backgroundColor),
      maxWidth: maxWidth,
      child: ResponsiveScaledBox(
        autoCalculateMediaQueryData: false,
        width: ResponsiveValue<double?>(
          context,
          conditionalValues: const [
            Condition.equals(name: MOBILE, value: 480),
            Condition.largerThan(name: 'LAPTOP', value: 1440),
            Condition.largerThan(name: '2K', value: 2560),
            Condition.largerThan(name: '8K', value: 7680),
          ],
          // defaultValue: context.width,
        ).value,
        child: BouncingScrollWrapper.builder(context, child),
      ),
    );
  }
}
