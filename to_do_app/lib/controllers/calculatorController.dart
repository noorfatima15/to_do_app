import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var buttonText = ''.obs;
  var firstValue = ''.obs;
  var secondValue = ''.obs;
  var operator = ''.obs;
  var result = ''.obs;

  calculation(var buttonTitle) {
    if (buttonText == '0'.obs) {
      //buttonTitle = 0;
      buttonText = buttonTitle;
    }
    return buttonText;
  }
}
