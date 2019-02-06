import 'heroes/user_service.dart';
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

class EvenBetterLogger extends Logger {
  final UserService _userService;

  EvenBetterLogger(this._userService);
  String get id => 'EvenBetterLogger';
  String toString() => super.toString() + ' (user: ${_userService.user.name})';
}