import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String format({String? formatModel}) => DateFormat(formatModel ?? 'dd/MM/yyyy').format(this);
}
