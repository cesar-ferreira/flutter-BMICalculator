import 'dart:math';

class CalculatorBrain {

  final int height;
  final int weight;

  double _bmi;

  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight /pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {

    String result = "";

    if (_bmi >= 25) {
      result = "Overweight";
    } else if (_bmi > 18.5) {
      result = "Normal";
    } else {
      result = "Underweight";
    }
    return result;
  }

  String getInterpretation() {

    String result = "";

    if (_bmi >= 25) {
      result = "You have a highter than normal body weight, Try to exercise more.";
    } else if (_bmi > 18.5) {
      result = "You have a normal body weight. Good job!";
    } else {
      result = "You have a lower than normal body weight. You can eat a bit more.";
    }
    return result;
  }


}