import 'package:flutter/material.dart';

class AppBarScreen extends StatelessWidget {
  const AppBarScreen({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Icon(Icons.menu_outlined),
        title: Center(child: Text("AppBar",)),
        actions: [
          IconButton(icon: Icon(Icons.bluetooth_searching), onPressed:(){}),

        ],
      ),
    );
  }
}
