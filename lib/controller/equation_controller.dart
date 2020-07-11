import 'dart:math';

import 'package:mobx/mobx.dart';
part 'equation_controller.g.dart';

class EquationController = _EquationController with _$EquationController;

abstract class _EquationController with Store {
  @observable
  String equation = '';

  @observable
  String result = '0';

  @action
  clear() {
    equation = '';
    result = '0';
  }

  @action
  equals() {
    evaluate();
    equation = '';
  }

  @action
  backspace() {
    if (equation.isNotEmpty)
      equation = equation.substring(0, equation.length - 1);
    if (equation.endsWith(' ')) {
      backspace();
      return;
    }
    evaluate();
  }

//'10 + -2 ^ 4 ÷ 16'
  @action
  addElement(String element) {
    var operations = ['^', '×', '÷', '+', '-'];

    var spacelessEquation = equation.replaceAll(' ', '');

    if (spacelessEquation.isEmpty) {
      equation = element;
      while (equation.contains('  ')) equation = equation.replaceAll('  ', ' ');
      evaluate();
      return;
    }

    if (operations.contains(element)) {
      equation = equation + ' ' + element;
    } else {
      if (operations
              .contains(spacelessEquation[spacelessEquation.length - 1]) &&
          operations.contains(spacelessEquation[spacelessEquation.length - 2]))
        equation = equation + element;
      else if (operations
          .contains(spacelessEquation[spacelessEquation.length - 1]))
        equation = equation + ' ' + element;
      else {
        equation = equation + element;
      }
    }
    while (equation.contains('  ')) equation = equation.replaceAll('  ', ' ');
    evaluate();
  }

  @action
  evaluate() {
    if (equation.isEmpty) {
      result = '0';
      return;
    }

    try {
      var operations = ['^', '×', '÷', '+', '-'];

      var split = equation.split(' ');

      var numbers = [];
      var operationBetween = [];

      split.forEach((element) {
        if (!operations.contains(element))
          numbers.add(double.parse(element));
        else
          operationBetween.add(element);
      });
      if (operationBetween.length == numbers.length) {
        return;
      }
      for (var operation in operations)
        for (var secondOperation in operations)
          if (equation.endsWith(operation + ' ' + secondOperation)) return;

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
      result = '${numbers[0]}';
    } catch (Exception) {
      result = 'NaN';
    }
  }
}
