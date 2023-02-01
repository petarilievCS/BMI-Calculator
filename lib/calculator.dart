import 'dart:math';

class Calculator {
  int height;
  int weight;
  double _bmi = 0.0;

  Calculator(this.weight, this.height);

  String calculateBMI() {
    _bmi = weight.toDouble() / (pow(height.toDouble() / 100.0, 2));
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi < 18.5) {
      return 'UNDERWEIGHT';
    } else if (_bmi < 25.0) {
      return 'NORMAL';
    }
    return 'OVERWEIGHT';
  }

  String getInterpretation() {
    if (_bmi < 18.5) {
      return 'You have a lower than normal body weight. Try to eat more.';
    } else if (_bmi < 25.0) {
      return 'You have a normal body weight. Good job!';
    }
    return 'You have a higher than normal body weight. Try to exercise more.';
  }
}
