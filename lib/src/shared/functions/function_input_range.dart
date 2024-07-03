import 'package:flutter/services.dart';

class RangeTextInputFormatter extends TextInputFormatter {
  final num? min;
  final num max;

  RangeTextInputFormatter({this.min = 0, required this.max});

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isEmpty) {
      return newValue;
    }

    num value = num.tryParse(newValue.text) ?? 0;
    value = value.clamp(min!, max);

    return TextEditingValue(
      text: value.toString(),
      selection: TextSelection.collapsed(offset: value.toString().length),
    );
  }
}
