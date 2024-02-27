import 'package:flutter/material.dart';

class DisableScrollbar extends StatelessWidget {
  final Widget child;
  const DisableScrollbar({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior().copyWith(
        overscroll: false,
        scrollbars: false,
      ),
      child: child,
    );
  }
}
