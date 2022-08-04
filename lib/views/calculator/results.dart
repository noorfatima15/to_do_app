import 'package:flutter/material.dart';

import 'subResults.dart';

class Results extends StatelessWidget {
  const Results({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SubResults(
        finalExpression: '',
        secondExpression: '',
        firstExpression: '',
        operation: '',
      ),
    );
  }
}
