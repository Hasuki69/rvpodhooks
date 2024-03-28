import 'dart:convert';

extension JsonExtension on Map {
  String get encode => jsonEncode(this);
}
