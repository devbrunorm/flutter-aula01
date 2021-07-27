import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  String text;
  VoidCallback onPressed;
  Color color;

  BlueButton(this.text, this.onPressed, {this.color = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        onPressed: onPressed
    );
  }
}
