import 'package:bmi_calculator/screens/bmi_screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.black54,
          //  canvasColor: Colors.blueAccent.shade200,
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText2: TextStyle(),
              bodyText1: TextStyle(),
              button: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold))),
      home: bmiCalculator(),
    );
  }
}
