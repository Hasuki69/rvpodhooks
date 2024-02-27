import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  /// Format DateTime
  ///
  /// [formatModel] is the format of the date
  ///
  /// By default, the [formatModel] is 'dd/MM/yyyy'
  ///
  String format({String? formatModel}) =>
      DateFormat(formatModel ?? 'dd/MM/yyyy').format(this);
}
