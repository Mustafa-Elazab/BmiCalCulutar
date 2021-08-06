import 'dart:math';

import 'package:bmi_calculator/screens/bmi_result_screens.dart';
import 'package:flutter/material.dart';

class bmiCalculator extends StatefulWidget {
  @override
  _bmiCalculatorState createState() => _bmiCalculatorState();
}

class _bmiCalculatorState extends State<bmiCalculator> {
  bool isMale = true;
  double height = 180.0;
  int age = 20;
  int weight = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMi Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                            color: isMale ? Colors.blue : Colors.grey[400]),
                        child: Column(
                          children: [
                            Image(
                              alignment: Alignment.center,
                              image: AssetImage('lib/assets/images/index.png'),
                              width: 100.0,
                              height: 100.0,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(fontSize: 25),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                            color: isMale ? Colors.grey[400] : Colors.blue),
                        child: Column(
                          children: [
                            Image(
                              alignment: Alignment.center,
                              image: AssetImage('lib/assets/images/index1.png'),
                              width: 100.0,
                              height: 100.0,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(fontSize: 25),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 2.0,
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                        value: height,
                        min: 100,
                        max: 220,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        }),
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.grey),
                      child: Column(
                        children: [
                          Text(
                            'Weight',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            '$weight',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                backgroundColor: Colors.blue,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: Icon(Icons.remove),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              FloatingActionButton(
                                backgroundColor: Colors.blue,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.grey),
                      child: Column(
                        children: [
                          Text(
                            'Age',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            '$age',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                backgroundColor: Colors.blue,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: Icon(
                                  Icons.remove,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              FloatingActionButton(
                                backgroundColor: Colors.blue,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Icon(Icons.add),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: MaterialButton(
              height: 60.0,
              onPressed: () {
                double result = weight / pow(height / 100, 2);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => bmiResult(
                              isMale: isMale,
                              result: result,
                              age: age,
                            )));
              },
              child: Text(
                'CalCulate',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
