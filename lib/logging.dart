import 'package:flutter/cupertino.dart';
import 'package:logging/logging.dart';

final Logger logger = Logger('Pronto Logger');

void setupLogger() {
  hierarchicalLoggingEnabled = true;
  logger.level = Level.ALL;

  logger.onRecord.listen((LogRecord record) {
    String emoji = '';
    if (record.level == Level.INFO) {
      emoji = 'ℹ️';
    } else if (record.level == Level.WARNING) {
      emoji = '❗️';
    } else if (record.level == Level.SEVERE) {
      emoji = '⛔️';
    }
    debugPrint('$emoji   ${record.level.name}: ${record.message}');
    if (record.error != null) {
      debugPrint('👉 ${record.error}');
    }
    if (record.level == Level.SEVERE) {
      debugPrintStack(stackTrace: record.stackTrace);
    }
  });
}