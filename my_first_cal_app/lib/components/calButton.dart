import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  String text;
  Color textColor;
  Color buttonColor;
  void Function()? onTap;

  Buttons({
    super.key,
    required this.text,
    required this.textColor,
    required this.buttonColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: buttonColor,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 32,
            ),
          ),
        ),
      ),
    );
  }
}
