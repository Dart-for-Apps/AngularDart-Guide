import 'engine.dart';
import 'tire.dart';

class Car {
  Engine engine;
  Tires tires;
  var description = "No DI";

  Car() {
    engine = Engine();
    tires = Tires();
  }

  String drive() => '$description car with '
      '${engine.cylinders} cylinders and '
      '${tires.make} tires.';
}
