import 'package:flutter/material.dart';

class SubResults extends StatelessWidget {
  const SubResults(
      {Key? key,
      required this.firstExpression,
      required this.finalExpression,
      required this.secondExpression,
      required this.operation})
      : super(key: key);
  final String firstExpression;
  final String finalExpression;
  final String secondExpression;
  final String operation;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            firstExpression,
            style: TextStyle(
              fontSize: 10,
            ),
          )
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            secondExpression,
            style: TextStyle(
              fontSize: 10,
            ),
          )
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            operation,
            style: TextStyle(
              fontSize: 10,
            ),
          )
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            finalExpression,
            style: TextStyle(
              fontSize: 10,
            ),
          )
        ]),
      ],
    );
  }
}
