import 'package:flutter/foundation.dart';

class AppLogger {
  static bool enabled = true; // turn logging on/off globally

  static void log(
    String message, {
    String tag = 'LOG',
  }) {
    if (!enabled) return;

    final timestamp = DateTime.now().toIso8601String();
    debugPrint('[$timestamp][$tag] $message');
  }
}