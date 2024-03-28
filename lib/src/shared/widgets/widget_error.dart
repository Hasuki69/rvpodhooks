import 'package:flutter/material.dart';

import '../../shared/shared.dart';

class CErrorWidget extends StatelessWidget {
  final Object error;
  const CErrorWidget(this.error, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text('$error').center();
  }
}
