import 'hero.dart';
import 'mock_heroes.dart';
import '../logger_service.dart';

class HeroService {
  final Logger _logger;
  HeroService(this._logger);

  List<Hero> getHeroes() {
    _logger.fine('Getting heroes ...');
    print(_logger);
    return mockHeroes;
  }
}