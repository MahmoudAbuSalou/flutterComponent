import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  final int result;
  final int age;
  final int weight;
  final isMale;

  BmiResult({@required this.result,
    @required this.age,
    @required this.weight,
  @required this.isMale});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "result :$result",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700),
              ),
              Text(
                "Gender :${isMale?"Male":'Female'}",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700),
              ),
              Text(
                "Age : $age",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700),
              ),
              Text(
                "Weight : $weight",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
