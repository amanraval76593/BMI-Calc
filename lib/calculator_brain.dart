// ignore_for_file: camel_case_types
import 'dart:math';

class Calculator_Brain {
  Calculator_Brain({required this.height, required this.weight});
  late int height;
  late int weight;
  late double _bmi;
  String getbmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getresult() {
    if (_bmi > 18 && _bmi <= 24) {
      return 'Normal';
    } else if (_bmi > 24) {
      return 'Overweight';
    } else {
      return 'Underweight';
    }
  }

  String getinterpretation() {
    if (_bmi > 18 && _bmi <= 24) {
      return 'Your BMI is perfectly normal.Keep Going....';
    } else if (_bmi > 24) {
      return 'Your BMI is high.Try to exercise more.';
    } else {
      return 'Your BMI is low.Try to eat more.';
    }
  }
}
