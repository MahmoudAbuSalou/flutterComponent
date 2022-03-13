import 'package:app_par/modules/app_par/appBar_screen.dart';
import 'package:app_par/modules/bmi/bmi_calculator.dart';
import 'package:app_par/modules/list_view/listviewscrren.dart';
import 'package:app_par/modules/login/login_screen.dart';
import 'package:app_par/modules/massenger/messenger_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=> runApp(MyApp());
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: MessengerScreen()
   );
  }
}
