class Logger {
  String _log = '';
  String get id => 'Logger Service';

  void fine(String msg) => _log = msg;

  @override
  String toString() => '[$id] $_log';
}

class BetterLogger extends Logger {
  String get id => 'Better Logger';
}