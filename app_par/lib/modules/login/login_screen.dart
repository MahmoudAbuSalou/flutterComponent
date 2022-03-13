import 'package:app_par/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var email = TextEditingController();
  var password = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPassword = true;

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
            child: Form(
              key: formKey,
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
                  defaultTextFormField(
                      valid: (value) {
                        if (value.isEmpty) {
                          return "email must be not empty";
                        }
                        return null;
                      },
                    focus: false,
                      controller: email,
                      label: "Email",
                      prefix: Icon(Icons.email_rounded),
                      type: TextInputType.emailAddress,
                      onChanged: (value) {
                        print(email.text);
                        print(password.text);
                      }
                      ,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  defaultTextFormField(
                    valid: (value) {
                      if (value.isEmpty) {
                        return "password must be not empty";
                      }
                      return null;
                    },
                    controller: password,
                    label: "Password",
                    prefix: Icon(Icons.lock),
                    type: TextInputType.visiblePassword,
                    onChanged: (value) {
                      print(email.text);
                      print(password.text);
                    },
                    isPassword: isPassword,
                    suffixPressed: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                    suffix: isPassword
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  defaultButton(
                      text: 'Login',
                      function: () {
                        if (formKey.currentState.validate()) {
                          print(email.text);
                          print(password.text);
                        }
                      }),
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
      ),
    );
  }
}
