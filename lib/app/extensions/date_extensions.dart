import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String toddMMyyFormatDayString() => DateFormat('dd/MM/yyyy').format(this);

  String toddMMyyWithTimeFormat() =>
      DateFormat('dd/MM/yyyy hh:mm a').format(this);

  static String fromMillisecondsToDateString(int milliseconds) {
    return DateFormat.yMMMd().format(DateTime.fromMillisecondsSinceEpoch(milliseconds * 1000));
  }
}
