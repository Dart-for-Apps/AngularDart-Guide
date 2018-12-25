import 'package:angular/angular.dart';

import 'hero_service.dart';
import '../logger_service.dart';
import 'user_service.dart';

HeroService heroServiceFactory(@Optional() Logger logger, UserService userService) =>
    HeroService(logger, userService.isAuthorized);

const heroServiceProvider = FactoryProvider(HeroService, heroServiceFactory);

// _injector.get(HeroService); 로도 인젝션 인스턴스를 가져올 수 있음