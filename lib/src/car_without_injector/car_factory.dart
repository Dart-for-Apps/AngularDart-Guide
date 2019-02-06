import 'car.dart';
import 'engine.dart';
import 'tire.dart';

class CarFactory {
  /// 이제 consumer 가 모든것을 생성해야 하는 문제가 생김.
  Car createCar() => Car(createEngine(), createTires())
      ..description = 'Factory';

  Engine createEngine() => Engine();
  Tires createTires() => Tires();
}

/// angular dart 에서는 injector를 통해서 이러한 문제를 해결할 수 있다.
/// 자세한 사용법은 hero 예제의 dependency injection 코드에 있음.