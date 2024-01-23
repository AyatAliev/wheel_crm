part of io_ui;

class Log {
  static final _logger = Logger(
    printer: PrettyPrinter(printEmojis: false),
  );

  static const String prefix = 'renteeapp';

  static void d(dynamic message) {
    _logger.i('$prefix $message');
  }
}
