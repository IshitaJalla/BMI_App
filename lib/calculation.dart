import 'dart:math';

class Logic {
  double calculateBMI({required int height, required int weight}) {
    double bmi = weight / pow(height / 100, 2);
    return bmi;
  }
}
