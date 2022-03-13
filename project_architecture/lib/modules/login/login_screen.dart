import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: true,
                  autofocus: true,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 8.0,
                          color: Colors.red,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelStyle:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                    prefixIcon: Icon(Icons.email),
                  ),
                  onChanged: (value) {},
                  onSubmitted: (value) {},
                ),
                SizedBox(
                  height: 40,
                ),
                TextField(
                  keyboardType: TextInputType.visiblePassword,
                  autocorrect: true,
                  autofocus: true,
                  textAlign: TextAlign.start,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelStyle:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye_rounded),
                  ),
                  onChanged: (value) {},
                  onSubmitted: (value) {},
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  width: double.infinity,
                  height: 40.0,
                  color: Colors.blue,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don\'t have an account : ",
                      style: TextStyle(fontSize: 19),
                    ),
                    InkWell(

                      child: Text(
                        "Register Now",
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                      ),
                      onTap: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
