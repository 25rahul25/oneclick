import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';


/// * Get Custom instance of logger to differentiate specific class logs.
/// EX:
/// final _log = getLogger('ClassName');
Logger getLogger(String className) {
  return Logger(
    printer: _CustomLogPrinter(className),
    filter: _MyFilter(),
  );
}

class _CustomLogPrinter extends PrettyPrinter {
  _CustomLogPrinter(this.className);
  final String className;

  @override
  int get methodCount => 0;

  @override
  List<String> log(LogEvent event) {
    final emoji = PrettyPrinter.levelEmojis[event.level];
    final time = super.getTime(DateTime.now() );
    return ['$time $emoji $className - ${event.message}'];
  }
}

class _MyFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    return kDebugMode;
  }
}
