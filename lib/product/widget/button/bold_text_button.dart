import 'package:flutter/material.dart';

///Bold text button is elevation 20
class BoldTextButton extends TextButton {
  BoldTextButton({super.key, required super.onPressed, required super.child})
      : super(style: TextButton.styleFrom(elevation: 20));
}
