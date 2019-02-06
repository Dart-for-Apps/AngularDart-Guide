class Engine {
  final int cylinders;

  Engine() : cylinders = 4;
  Engine.withCylinders(this.cylinders);
}

class Engine2 extends Engine {
  Engine2(int cylinders) : super.withCylinders(cylinders);
}
