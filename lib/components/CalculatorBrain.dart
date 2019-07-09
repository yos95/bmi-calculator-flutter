import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});
  final int weight;
  final int height;

  double _bmi;

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'En surpoids';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Sous-poids';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'En surpoids';
    } else if (_bmi > 18.5) {
      return 'Poids normal, bien, continuez comme ça!';
    } else {
      return 'En surpoids, il faut manger moins et faire plus d\'exercice !!';
    }
  }
}
