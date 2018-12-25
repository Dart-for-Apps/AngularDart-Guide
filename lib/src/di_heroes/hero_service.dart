import 'hero.dart';
import 'mock_heroes.dart';
import '../logger_service.dart';
import 'package:angular/angular.dart';

class HeroService {
  final Logger _logger;
  final bool _isAuthorized;
  HeroService(this._logger, this._isAuthorized) {
    _logger?.fine('hello');
  }

  List<Hero> getHeroes() {
    var auth = _isAuthorized ? 'authorized' : 'unauthorized';
    _logger?.fine('Getting heroes for $auth user.');
    return mockHeroes;
  }
}