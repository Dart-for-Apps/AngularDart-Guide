import 'package:angular/angular.dart';

import 'src/logger_service.dart';
import 'src/heroes/heroes_component.dart';

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  providers: [ClassProvider(Logger),],
  directives: [HeroesComponent],
)
class AppComponent {
}
