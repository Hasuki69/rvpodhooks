import 'package:flutter/services.dart';

class AutoUpperCaseFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = newValue.text.toUpperCase();
    return newValue.copyWith(text: newText);
  }
}
