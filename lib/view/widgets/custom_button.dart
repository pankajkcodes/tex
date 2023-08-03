import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  Color? bgColor, fgColor;
  VoidCallback onClick;
  String text;

  CustomButton({
    super.key,
    required this.bgColor,
    this.fgColor,
    required this.onClick,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: fgColor,
        backgroundColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
      onPressed: onClick,
      child: Text(
        text,
        style: TextStyle(
            color: fgColor ?? Colors.white,
            fontWeight: FontWeight.normal,
            fontSize: 20),
      ),
    );
  }
}
