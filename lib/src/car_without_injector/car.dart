import 'engine.dart';
import 'tire.dart';

class Car {
  Engine engine;
  Tires tires;
  var description = "DI";

  /// Car(Engine(), Tires()); 와 같은 형태로 플렉서블한 클래스를 생성할 수 있게 됨.
  Car(this.engine, this.tires);

  String drive() => '$description car with '
      '${engine.cylinders} cylinders and '
      '${tires.make} tires.';
}

