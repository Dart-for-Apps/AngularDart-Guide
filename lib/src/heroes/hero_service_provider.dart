import 'package:angular/angular.dart';
import 'hero_service.dart';
import '../logger_service.dart';
import 'user_service.dart';

HeroService heroServiceFactory(Logger logger, UserService userService) =>
    HeroService(logger, userService.user.isAuthorized);

const heroServiceProvider = FactoryProvider(HeroService, heroServiceFactory);