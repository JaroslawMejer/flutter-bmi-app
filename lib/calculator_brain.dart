import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  // UNDERSCORES MEANS IT IS PRIVATE VARIABLE, ACCESSABLE ONLY IN THIS CLASS

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Way too fat, eat less';
    } else if (_bmi > 18.5) {
      return 'It\'s fine, keep it cool';
    } else {
      return 'Way too skinny, eat more';
    }
  }
}
