import 'dart:math';

class Calculator {
  Calculator({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;
  String caluculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretations() {
    if (_bmi >= 25) {
      return 'Your BMI is higher than Normal BMI, try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a Normal Body Weight, Good Job!';
    } else {
      return 'Your BMI is lower than Normal BMI, consider eating more healthy food.';
    }
  }
}
