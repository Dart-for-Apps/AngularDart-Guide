class Logger {
  String _log = '';
  String get id => 'Logger';

  void fine(String msg) {
     _log = msg;
     print(this);
  }

  @override
  String toString() {
    // TODO: implement toString
    return '[$id] $_log';
  }
}