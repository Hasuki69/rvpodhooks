import 'package:flutter/services.dart';

class AutoTitleCaseFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = newValue.text.split(' ').map((word) {
      return word.isEmpty
          ? ''
          : word[0].toUpperCase() + word.substring(1).toLowerCase();
    }).join(' ');

    if (newText != newValue.text) {
      return TextEditingValue(text: newText);
    } else {
      return newValue;
    }
  }
}
