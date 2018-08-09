import 'package:flutter/material.dart';

class BTextField extends TextField {
  final controller;
  final String labelText;
  final bool obscureText;

  BTextField({this.controller, this.labelText, this.obscureText = false})
      : super(
            controller: controller,
            decoration: InputDecoration(filled: true, labelText: labelText),
            obscureText: obscureText);
}
