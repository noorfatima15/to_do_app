import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:to_do_app/controllers/calculatorController.dart';

class ButttonWidget extends StatelessWidget {
  ButttonWidget(
      {Key? key,
      required this.button_title,
      required this.button_height,
      required this.button_color,
      required this.buttonPressed})
      : super(key: key);

  // final CalculatorController calculatorController =
  //     Get.lazyPut(() => CalculatorController())

  final CalculatorController calculatorController =
      Get.put(CalculatorController());

  final String button_title;
  final double button_height;
  final Color button_color;
  final Function buttonPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: button_height,
      width: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: button_color.withOpacity(0.5),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.2),
            blurRadius: 2,
            spreadRadius: 2,

            offset: const Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      // child: Center(
      //   child: Text(
      //     button_title,
      //     style: TextStyle(color: Colors.white, fontSize: 18),
      //   ),
      child: MaterialButton(
        onPressed: () {
          buttonPressed();

          print(calculatorController.results + ' result');
          print(calculatorController.firstValue + ' first value');
          // print(calculatorController.operator  + ' operator');
          print(calculatorController.secondValue + ' second value');
        },

        //
        // {
        //   // buttonPressed((String btnTitle) => button_title
        //
        //   );
        // },
        shape: StadiumBorder(),
        child: Text(
          button_title,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
