import 'package:angular/angular.dart';
import 'hero_list_component.dart';

@Component(
  selector: 'my-heroes',
  template: '''
    <h2>Heroes</h2>
    <hero-list></hero-list>
  ''',
  directives: [HeroListComponent],
)
class HeroesComponent {}
