import 'package:angular/angular.dart';

import 'src/heroes/heroes_component.dart';
//import 'src/hero_form_component.dart';
// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
//  directives: [HeroFormComponent],
  directives: [HeroesComponent],
)
class AppComponent {
}
