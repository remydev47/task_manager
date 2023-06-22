import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final Color textColor;

  const ButtonWidget({
    Key? key,
    required this.backgroundColor,
    required this.text,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height / 14,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(30)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 24,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
