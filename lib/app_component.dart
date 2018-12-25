import 'package:angular/angular.dart';

import 'src/di_heroes/heroes_component.dart';
import 'src/logger_service.dart';
// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [HeroesComponent],
  providers: [],
  // Logger 를 사용하는 생성자들에게 다른 서브 클래스를 사용하고 싶을 경우
  // ClassProvider(Logger, useClass: BetterLogger)
  // 이미 등록한 Logger 로 같은 인터페이스를 갖는 다른 클래스에 인젝션 하고 싶은 경우
  // ExistingProvider(OldLogger, Logger)

  // const silentLogger = SilentLogger(); 처럼 이미 생성된 객체를 사용하고 싶은 경우
  // ValueProvider(Logger, silentLogger)
)
class AppComponent {
}
