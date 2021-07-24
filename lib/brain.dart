import 'dart:math';

class Calculator {
  Calculator({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getText() {
    if (_bmi >= 25) {
      return 'You are eating too much!! Maintain your diet';
    } else if (_bmi > 18) {
      return 'You are healthy :)';
    } else {
      return 'Eat more!!';
    }
  }
}
