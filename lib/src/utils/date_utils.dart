import 'package:intl/intl.dart';

class DateUtilsX {
  /// Returns a formatted date string.
  /// 
  /// Example:
  ///   DateUtilsX.format(withTime: true)
  ///   DateUtilsX.format(customFormat: 'yyyy-MM-dd')
  static String format({
    bool withTime = false,
    String? customFormat,
    DateTime? date,
  }) {
    final now = date ?? DateTime.now();

    final format = customFormat ??
        (withTime ? 'E dd/MM/yyyy HH:mm' : 'E dd/MM/yyyy');

    return DateFormat(format).format(now);
  }
}