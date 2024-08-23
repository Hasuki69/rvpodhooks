import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String format({String? formatModel}) => DateFormat(formatModel ?? 'yyyy-MM-dd').format(this);
}
