import 'package:logger/logger.dart';

class AppLogger {
  static Logger get _logger => Logger(
        printer: PrettyPrinter(),
      );

  static void log(Object object) {
    _logger.d(object);
  }
}
