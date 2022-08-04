import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/calculator_button.dart';

class Calculatorscreen extends StatelessWidget {
  const Calculatorscreen({Key? key}) : super(key: key);

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
                        button_title: '↕',
                        button_height: 60,
                        button_color: Colors.black,
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
                      ),
                      SizedBox(width: 15),
                      ButttonWidget(
                        button_title: '(',
                        button_height: 60,
                        button_color: Colors.amberAccent,
                      ),
                      SizedBox(width: 15),
                      ButttonWidget(
                        button_title: ')',
                        button_height: 60,
                        button_color: Colors.amberAccent,
                      ),
                      SizedBox(width: 15),
                      ButttonWidget(
                        button_title: 'x',
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
                        button_title: '√',
                        button_height: 60,
                        button_color: Colors.amberAccent,
                      ),
                      SizedBox(width: 15),
                      ButttonWidget(
                        button_title: '%',
                        button_height: 60,
                        button_color: Colors.amberAccent,
                      ),
                      SizedBox(width: 15),
                      ButttonWidget(
                        button_title: '±',
                        button_height: 60,
                        button_color: Colors.amberAccent,
                      ),
                      SizedBox(width: 15),
                      ButttonWidget(
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
                        button_title: '7',
                        button_height: 60,
                        button_color: Colors.black,
                      ),
                      SizedBox(width: 15),
                      ButttonWidget(
                        button_title: '8',
                        button_height: 60,
                        button_color: Colors.black,
                      ),
                      SizedBox(width: 15),
                      ButttonWidget(
                        button_title: '9',
                        button_height: 60,
                        button_color: Colors.black,
                      ),
                      SizedBox(width: 15),
                      ButttonWidget(
                        button_title: '-',
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
                        button_height: 60,
                        button_color: Colors.black,
                      ),
                      SizedBox(width: 15),
                      ButttonWidget(
                        button_title: '5',
                        button_height: 60,
                        button_color: Colors.black,
                      ),
                      SizedBox(width: 15),
                      ButttonWidget(
                        button_title: '6',
                        button_height: 60,
                        button_color: Colors.black,
                      ),
                      SizedBox(width: 15),
                      ButttonWidget(
                        button_title: '+',
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
                                  button_height: 60,
                                  button_color: Colors.black,
                                ),
                                SizedBox(width: 15),
                                ButttonWidget(
                                  button_title: '2',
                                  button_height: 60,
                                  button_color: Colors.black,
                                ),
                                SizedBox(width: 15),
                                ButttonWidget(
                                  button_title: '3',
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
                              button_height: 60,
                              button_color: Colors.black,
                            ),
                            SizedBox(width: 15),
                            ButttonWidget(
                              button_title: '0',
                              button_height: 60,
                              button_color: Colors.black,
                            ),
                            SizedBox(width: 15),
                            ButttonWidget(
                              button_title: '⌫',
                              button_height: 60,
                              button_color: Colors.black,
                            ),
                            SizedBox(width: 15),
                          ]),
                        ],
                      ),
                      ButttonWidget(
                          button_title: '=',
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
