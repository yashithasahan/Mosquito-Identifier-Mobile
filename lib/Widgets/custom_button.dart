import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Color? buttonColor;
  final Color textColor;
  final VoidCallback? onPressed;
  const CustomButton(
      {super.key,
      required this.buttonText,
      this.buttonColor,
      this.onPressed,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 50,
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(45), color: buttonColor),
          child: Center(
              child: Text(
            buttonText,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 14, color: textColor),
          )),
        ),
      ),
    );
  }
}
