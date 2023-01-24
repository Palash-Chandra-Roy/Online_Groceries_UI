import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomButton extends StatelessWidget {
  String buttonText; 
  Function() onPresseh;
  Color color;
  Color textColor;

  CustomButton({
  super.key,
  required this.buttonText, 
  required this.onPresseh,
  required this.color,
  required this.textColor});

  @override
  Widget build(BuildContext context) {
     return ElevatedButton(
        style: ElevatedButton.styleFrom(
        onSurface: Colors.red,
            elevation: 0,
            primary: color,
            minimumSize: const Size(353, 67),
            maximumSize: const Size(353, 67),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        // ignore: sort_child_properties_last
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 16, color: textColor),
        ),
        onPressed: onPresseh);
  }
}