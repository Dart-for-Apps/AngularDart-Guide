import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

import 'hero.dart';

const List<String> _powers = [
  'Really Smart',
  'Super Flexible',
  'Super Hot',
  'Weather Changer',
];

@Component(
  selector: 'hero-form',
  templateUrl: 'hero_form_component.html',
  directives: [coreDirectives, formDirectives],
)
class HeroFormComponent {
  Hero model = Hero(18, 'Dr IQ', _powers[0], 'Chuck Overstreet');
  bool submitted = false;

  List<String> get powers => _powers;

  void onSubmit() => submitted = true;
}