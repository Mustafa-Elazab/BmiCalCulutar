import 'package:flutter/material.dart';

class bmiResult extends StatelessWidget {
  final bool isMale;
  final double result;
  final int age;

  const bmiResult(
      {Key key,
      @required this.isMale,
      @required this.result,
      @required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMi Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isMale ? 'Gender : Male' : 'Gender : Female',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'Result : ${result.round()}',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'Age  : $age',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
