import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String toddMMyyFormatDayString() => DateFormat('dd/MM/yyyy').format(this);

  String toddMMyyWithTimeFormat() =>
      DateFormat('dd/MM/yyyy hh:mm a').format(this);
}
