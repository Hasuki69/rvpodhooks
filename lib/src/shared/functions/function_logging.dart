import 'dart:async';
import 'dart:developer';

void consoleLog(String message,
    {String name = 'Console',
    DateTime? time,
    int? sequenceNumber,
    int level = 0,
    Object? error,
    StackTrace? stackTrace,
    Zone? zone}) {
  log(
    message,
    name: name,
    time: time,
    sequenceNumber: sequenceNumber,
    level: level,
    error: error,
    stackTrace: stackTrace,
    zone: zone,
  );
}
