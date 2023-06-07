// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_reactive_widget/flutter_reactive_widget.dart';

class Car {
  int speed;
  Car({
    required this.speed,
  });

  incSpeed() {
    speed++;
  }
}

class AppController {
  final _car = ReactiveValue<Car>(Car(speed: 0));

  Car get car => _car.value;

  incSpeed(int x) {
    _car.value = Car(speed: _car.value.speed + x);
  }
}
