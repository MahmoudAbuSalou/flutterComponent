import 'dart:math';

import 'package:app_par/modules/bmi/bmi_result.dart';
import 'package:flutter/material.dart';

class BmiCalc extends StatefulWidget {
  @override
  _BmiCalcState createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
  bool isMale = true;
  double sliderValue = 120.0;
  int age = 20;
  int weight = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(
          "BMI Calculator",
          style: TextStyle(
            fontSize: 26,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.wc,
                              size: 70,
                              color: Colors.white,
                            ),
                            Text(
                              "Male",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: isMale ? Colors.blueAccent : Colors.white10,
                            borderRadius: BorderRadius.circular(10.0)),
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.wc,
                              size: 70,
                              color: Colors.white,
                            ),
                            Text(
                              "Female",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: !isMale ? Colors.blueAccent : Colors.white10,
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Height",
                      style: TextStyle(
                          fontSize: 32.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                     textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "${sliderValue.round()}",
                          style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "cm",
                          style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Slider(
                      value: sliderValue,
                      activeColor: Colors.pinkAccent,
                      onChanged: (value) {
                        setState(() {
                          sliderValue = value;
                        });
                      },
                      max: 200.0,
                      min: 20.0,
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(14.0)),
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Weight",
                            style: TextStyle(
                                fontSize: 30.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "$weight",
                            style: TextStyle(
                                fontSize: 30.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(

                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: Icon(Icons.remove),
                                 mini: true,
                                heroTag: 'weight--',
                                backgroundColor: Colors.pinkAccent,
                                elevation: 4.0,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: Icon(Icons.add),
                                mini: true,
                                heroTag: 'weight++',
                                backgroundColor: Colors.pinkAccent,
                                elevation: 4.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Age",
                            style: TextStyle(
                                fontSize: 30.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "$age",
                            style: TextStyle(
                                fontSize: 30.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: Icon(Icons.remove),
                                mini: true,
                                heroTag: 'age--',
                                backgroundColor: Colors.pinkAccent,
                                elevation: 4.0,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Icon(Icons.add),
                                mini: true,
                                heroTag: 'age++',
                                backgroundColor: Colors.pinkAccent,
                                elevation: 4.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          MaterialButton(
            height: 50,
            minWidth: double.infinity,
            color: Colors.pinkAccent,
            splashColor: Colors.red,
            onPressed: () {
              int result = (weight / pow(sliderValue / 100, 2)).round();
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BmiResult(result: result,
                    age: age,
                    weight: weight,
                  isMale: isMale,)));
            },
            child: Text(
              "Calculator",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
