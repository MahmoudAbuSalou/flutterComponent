import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  double height = 40.0,
  Color color = Colors.blueAccent,
  @required Function function,
  @required String text,
  double radius = 0.0,
}) =>
    Container(
      width: width,
      height: height,
      child: TextButton(
        onPressed: function,
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
        ),
      ),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(radius)),
    );

Widget defaultTextFormField({
  @required TextEditingController controller,
  @required TextInputType type,
  @required String label,
  @required Icon prefix,
  @required Function valid,
  bool correct = true,
  bool focus = true,
  bool isPassword = false,
  Icon suffix,
  Function onChanged,
  Function onSubmitted,
  Function suffixPressed,
}) =>
    TextFormField(
      validator: valid,
      controller: controller,
      keyboardType: type,
      autocorrect: true,
      autofocus: true,
      textAlign: TextAlign.start,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        labelStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
        prefixIcon: prefix,
        suffixIcon: suffix != null
            ? IconButton(
                icon: suffix,
                onPressed: suffixPressed,
              )
            : null,
      ),
      onChanged: onChanged,
      onFieldSubmitted: onSubmitted,
    );
