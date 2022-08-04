import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_app/controllers/calculatorController.dart';

import 'subResults.dart';

class Results extends StatelessWidget {
  Results({Key? key}) : super(key: key);
  final CalculatorController calculatorController =
      //Get.put(CalculatorController());
      Get.find<CalculatorController>();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(children: [
        SubResults(
            valueOfController:
                '${calculatorController.firstValue} ${calculatorController.operator} ${calculatorController.secondValue}'),
        // SubResults(valueOfController: '${calculatorController.operator}'),
        // SubResults(valueOfController: '${calculatorController.secondValue}'),
        OperationResult(operationResult: '${calculatorController.results}'),
        // OperationResult(operationResult: '${calculatorController.results}'),
      ]),
    );
  }
}
