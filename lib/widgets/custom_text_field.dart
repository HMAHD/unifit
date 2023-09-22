// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.title,
    required this.hint,
    required this.isObscure,
    // required this.controller,
    required this.icon,
    required InputDecoration decoration,
    required TextInputType keyboadType,
  });

  final String title;
  final String? hint;
  final bool isObscure;
  //final String  label;

  // final TextEditingController controller;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: TextField(
        obscureText: isObscure,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(width: 1, color: Colors.grey.withOpacity(0.5)),
            borderRadius: BorderRadius.circular(15.0), //<-- SEE HERE
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(width: 1, color: Colors.grey.withOpacity(0.5)),
            borderRadius: BorderRadius.circular(15.0),
            //<-- SEE HERE
          ),
          prefixIcon: icon,
          labelText: title,
          hintText: hint,
          hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
          labelStyle: TextStyle(fontSize: 13, color: Colors.grey),
        ),
      ),
    );
  }
}
