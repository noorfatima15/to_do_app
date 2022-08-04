import 'package:flutter/material.dart';

class SubResults extends StatelessWidget {
  SubResults({
    Key? key,
    required this.valueOfController,
  }) : super(key: key);
  final String valueOfController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Text(
            valueOfController,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ]),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}

class OperationResult extends StatelessWidget {
  OperationResult({Key? key, required this.operationResult}) : super(key: key);
  final String operationResult;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        Text(
          operationResult,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ]),
    );
  }
}
