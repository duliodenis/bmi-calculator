class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    // See https://en.wikipedia.org/wiki/Body_mass_index
    _bmi = weight / (height / 100 * height / 100);
    return (_bmi).toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to hit the gym - especially with cardio.';
    } else if (_bmi >= 18.5) {
      return 'Great job - you have a normal body weight.';
    } else {
      return 'You have a lower than normal body weight. Try to eat healthy a bit more.';
    }
  }
}
