import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String buttonText;
  final Color bgColor;
  final Color fontColor;

  const MainButton({
    super.key,
    required this.buttonText,
    required this.bgColor,
    required this.fontColor,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(45),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 50,
            vertical: 20,
          ),
          child: Text(
            buttonText,
            style: TextStyle(
              color: fontColor,
              fontSize: 22,
            ),
          ),
        ));
  }
}
