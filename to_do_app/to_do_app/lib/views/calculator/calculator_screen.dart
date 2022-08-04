import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:to_do_app/controllers/calculatorController.dart';
import 'package:to_do_app/views/calculator/results.dart';
import 'package:to_do_app/widgets/calculator_button.dart';

class Calculatorscreen extends StatelessWidget {
  Calculatorscreen({Key? key}) : super(key: key);
  final CalculatorController calculatorController =
      Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 360,
              color: Colors.black87,
              child: Results(),
            ),
            Container(
              height: 504,
              width: 360,
              color: Colors.black,
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 280),
                      ButttonWidget(
                        button_title: '3√',
                        button_height: 60,
                        button_color: Colors.black,
                        buttonPressed: () => calculatorController.cubicRoot(),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      ButttonWidget(
                          button_title: 'C',
                          button_height: 60,
                          button_color: Colors.amber,
                          buttonPressed: () => calculatorController.clearAll()),
                      SizedBox(width: 15),
                      ButttonWidget(
                          button_title: 'x²',
                          button_height: 60,
                          button_color: Colors.amberAccent,
                          buttonPressed: () =>
                              calculatorController.squareFunction()),
                      SizedBox(width: 15),
                      ButttonWidget(
                          button_title: 'x³',
                          button_height: 60,
                          button_color: Colors.amberAccent,
                          buttonPressed: () =>
                              calculatorController.cubeFunction()),
                      SizedBox(width: 15),
                      ButttonWidget(
                          button_title: 'x',
                          button_height: 60,
                          button_color: Colors.purple,
                          buttonPressed: () =>
                              calculatorController.operationFunction('x')),
                      SizedBox(width: 12),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      ButttonWidget(
                        button_title: '√',
                        button_height: 60,
                        buttonPressed: () =>
                            calculatorController.squareFunction(),
                        button_color: Colors.amberAccent,
                      ),
                      SizedBox(width: 15),
                      ButttonWidget(
                        button_title: '%',
                        buttonPressed: () =>
                            calculatorController.percentageFunction(),
                        button_height: 60,
                        button_color: Colors.amberAccent,
                      ),
                      SizedBox(width: 15),
                      ButttonWidget(
                        button_title: '±',
                        buttonPressed: () =>
                            calculatorController.positiveNegativeFunction(),
                        button_height: 60,
                        button_color: Colors.amberAccent,
                      ),
                      SizedBox(width: 15),
                      ButttonWidget(
                        buttonPressed: () =>
                            calculatorController.operationFunction('÷'),
                        button_title: '÷',
                        button_height: 60,
                        button_color: Colors.purple,
                      ),
                      SizedBox(width: 12),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      ButttonWidget(
                        buttonPressed: () =>
                            calculatorController.addDigits('7'),
                        button_title: '7',
                        button_height: 60,
                        button_color: Colors.black,
                      ),
                      SizedBox(width: 15),
                      ButttonWidget(
                        button_title: '8',
                        buttonPressed: () =>
                            calculatorController.addDigits('8'),
                        button_height: 60,
                        button_color: Colors.black,
                      ),
                      SizedBox(width: 15),
                      ButttonWidget(
                        button_title: '9',
                        buttonPressed: () =>
                            calculatorController.addDigits('9'),
                        button_height: 60,
                        button_color: Colors.black,
                      ),
                      SizedBox(width: 15),
                      ButttonWidget(
                        button_title: '-',
                        buttonPressed: () =>
                            calculatorController.operationFunction('-'),
                        button_height: 60,
                        button_color: Colors.purple,
                      ),
                      SizedBox(width: 12),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      ButttonWidget(
                        button_title: '4',
                        buttonPressed: () =>
                            calculatorController.addDigits('4'),
                        button_height: 60,
                        button_color: Colors.black,
                      ),
                      SizedBox(width: 15),
                      ButttonWidget(
                        button_title: '5',
                        button_height: 60,
                        buttonPressed: () =>
                            calculatorController.addDigits('5'),
                        button_color: Colors.black,
                      ),
                      SizedBox(width: 15),
                      ButttonWidget(
                        button_title: '6',
                        buttonPressed: () =>
                            calculatorController.addDigits('6'),
                        button_height: 60,
                        button_color: Colors.black,
                      ),
                      SizedBox(width: 15),
                      ButttonWidget(
                        button_title: '+',
                        buttonPressed: () =>
                            calculatorController.operationFunction('+'),
                        button_height: 60,
                        button_color: Colors.purple,
                      ),
                      SizedBox(width: 12),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Row(children: [
                                SizedBox(width: 20),
                                ButttonWidget(
                                  button_title: '1',
                                  buttonPressed: () =>
                                      calculatorController.addDigits('1'),
                                  button_height: 60,
                                  button_color: Colors.black,
                                ),
                                SizedBox(width: 15),
                                ButttonWidget(
                                  button_title: '2',
                                  buttonPressed: () =>
                                      calculatorController.addDigits('2'),
                                  button_height: 60,
                                  button_color: Colors.black,
                                ),
                                SizedBox(width: 15),
                                ButttonWidget(
                                  button_title: '3',
                                  buttonPressed: () =>
                                      calculatorController.addDigits('3'),
                                  button_height: 60,
                                  button_color: Colors.black,
                                ),
                                SizedBox(width: 15),
                              ]),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(children: [
                            SizedBox(width: 20),
                            ButttonWidget(
                              button_title: '.',
                              buttonPressed: () =>
                                  calculatorController.decimalFunction(),
                              button_height: 60,
                              button_color: Colors.black,
                            ),
                            SizedBox(width: 15),
                            ButttonWidget(
                              button_title: '0',
                              button_height: 60,
                              button_color: Colors.black,
                              buttonPressed: () =>
                                  calculatorController.addDigits('0'),
                            ),
                            SizedBox(width: 15),
                            ButttonWidget(
                              button_title: '⌫',
                              button_height: 60,
                              button_color: Colors.black,
                              buttonPressed: () =>
                                  calculatorController.backSpace(),
                            ),
                            SizedBox(width: 15),
                          ]),
                        ],
                      ),
                      ButttonWidget(
                          button_title: '=',
                          buttonPressed: () =>
                              calculatorController.addDigits(''),
                          button_height: 120,
                          button_color: Colors.purple),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
