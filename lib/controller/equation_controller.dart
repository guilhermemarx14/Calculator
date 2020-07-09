import 'dart:math';

import 'package:mobx/mobx.dart';

class EquationController {
  @observable
  String equation;

  EquationController() {
    equation = '';
  }

  @action
  double evaluate(String equationTeste) {
    var split = equationTeste.split(' ');

    var operations = ['^', '×', '÷', '+', '-'];

    var numbers = [];
    var operationBetween = [];
    split.forEach((element) {
      if (!operations.contains(element))
        numbers.add(double.parse(element));
      else
        operationBetween.add(element);
    });

    //evaluate exp
    for (int i = 0; i < operationBetween.length; i++)
      if (operationBetween[i] == '^') {
        numbers[i] = pow(numbers[i], numbers[i + 1]);
        numbers.removeAt(i + 1);
        operationBetween.removeAt(i);
        i--;
      }

    //evaluate mult
    for (int i = 0; i < operationBetween.length; i++)
      if (operationBetween[i] == '×') {
        numbers[i] = numbers[i] * numbers[i + 1];
        numbers.removeAt(i + 1);
        operationBetween.removeAt(i);
        i--;
      }

    //evaluate div
    for (int i = 0; i < operationBetween.length; i++)
      if (operationBetween[i] == '÷') {
        numbers[i] = numbers[i] / numbers[i + 1];
        numbers.removeAt(i + 1);
        operationBetween.removeAt(i);
        i--;
      }

    //evaluate add
    for (int i = 0; i < operationBetween.length; i++)
      if (operationBetween[i] == '+') {
        numbers[i] = numbers[i] + numbers[i + 1];
        numbers.removeAt(i + 1);
        operationBetween.removeAt(i);
        i--;
      }

    //evaluate sub
    for (int i = 0; i < operationBetween.length; i++)
      if (operationBetween[i] == '-') {
        numbers[i] = numbers[i] - numbers[i + 1];
        numbers.removeAt(i + 1);
        operationBetween.removeAt(i);
        i--;
      }

    return numbers[0];
  }
}
