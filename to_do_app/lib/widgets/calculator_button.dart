import 'package:flutter/material.dart';

class ButttonWidget extends StatelessWidget {
  ButttonWidget(
      {Key? key,
      required this.button_title,
      required this.button_height,
      required this.button_color})
      : super(key: key);
  final String button_title;
  final double button_height;
  final Color button_color;
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
      child: Center(
        child: Text(
          button_title,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
