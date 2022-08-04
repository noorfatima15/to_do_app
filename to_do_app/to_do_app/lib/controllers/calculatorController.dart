import 'dart:math';

import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var firstValue = '0'.obs;
  var secondValue = '0'.obs;
  RxString? operator;
  RxString results = '0'.obs;

  addDigits(String number) {
    if (results.value == '0') return results.value = number;

    if (results.value == '-0') {
      return results.value = '-' + number;
    }
    results.value = results.value + number;
  }

  // addDigits(String number) {
  //   if (results.value == '0') return results.value = number;
  //
  //   if (results.value == '-0') {
  //     return results.value = '-' + number;
  //   }
  //
  //   results.value = results.value + number;
  // }

  clearAll() {
    firstValue.value = '0';
    secondValue.value = '0';
    results.value = '0';
    operator = null;
  }

  decimalFunction() {
    if (results.contains('.')) return;

    if (results.value.startsWith('0')) {
      // return results.value = '0.${results.value}';
      results.value = '0.' + results.value;
    } else {
      results.value = results.value + '.';
      // results.value = '${results.value}.';

    }
  }

  // resultFunction() {
  //   secondValue.value = results.value;
  //   results.value = '';
  //   double num1 = double.parse(firstValue.value);
  //   double num2 = double.parse(secondValue.value);
  //
  //   // if (results.value.endsWith('.0')) {
  //   //   results.value = results.value.substring(0, results.value.length - 2);
  //   // }
  //   switch (operator!.value) {
  //     case '+':
  //       results.value = '${num1 + num2}';
  //
  //       return results.value;
  //
  //     case '-':
  //       results.value = '${num1 - num2}';
  //       return results.value;
  //     case '/':
  //       results.value = '${num1 / num2}';
  //       return results.value;
  //     case 'x':
  //       results.value = '${num1 * num2}';
  //       return results.value;
  //
  //     default:
  //       return;
  //   }
  // }

  operationFunction(String operation) {
    if (operator == null) {
      firstValue.value = results.value;
      results.value = '0';
    }
    operator = operation.obs;
    if (operator == operation.obs) {
      secondValue.value = results.value;
      results.value = '';
      double num1 = double.parse(firstValue.value);
      double num2 = double.parse(secondValue.value);

      // if (results.value.endsWith('.0')) {
      //   results.value = results.value.substring(0, results.value.length - 2);
      // }
      switch (operator!.value) {
        case '+':
          results.value = '${num1 + num2}';

          return results.value;

        case '-':
          results.value = '${num1 - num2}';
          return results.value;
        case '/':
          results.value = '${num1 / num2}';
          return results.value;
        case 'x':
          results.value = '${num1 * num2}';
          return results.value;

        default:
          return;
      }
    }
  }

  rootFunction() {
    double value = double.parse(results.value);
    results.value = pow(value, 0.5).toString();
  }

  void positiveNegativeFunction() {
    if (results.startsWith('-')) {
      results.value = results.value.replaceFirst('-', '');
    } else {
      results.value = '-' + results.value;
    }
  }

  void backSpace() {
    if (results.value.replaceAll('-', '').length > 1) {
      results.value = results.substring(0, results.value.length - 1);
    } else {
      results.value = '0';
    }
  }

  void squareFunction() {
    double base = double.parse(results.value);
    results.value = pow(base, 2).toString();
  }

  void cubeFunction() {
    double base = double.parse(results.value);
    results.value = pow(base, 3).toString();
  }

  void cubicRoot() {
    double cubicRootValue = (1 / 3);
    double base = double.parse(results.value);
    results.value = pow(base, cubicRootValue).toString();
  }

  void percentageFunction() {
    double value = double.parse(results.value);
    results.value = (value / 100).toString();
  }
}
