import 'package:flutter/material.dart';

class CustomTextBox extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController? controller;
  final double height;
  final double textSize;

  const CustomTextBox({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.controller,
    this.height = 50,
    this.textSize = 18,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 329,
      height: height,
      decoration: BoxDecoration(
        color: const Color(0xFFFFEACC),
        borderRadius: BorderRadius.circular(17),
        border: Border.all(color: const Color(0xFF5C4015), width: 1),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      alignment: Alignment.center,
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          hintStyle: TextStyle(
            color: const Color(0xFF5C4015).withAlpha((0.34 * 255).round()),
            fontSize: textSize,
            fontFamily: 'Young Serif',
            fontWeight: FontWeight.w400,
          ),
        ),
        style: TextStyle(
          color: const Color(0xFF5C4015),
          fontSize: textSize,
          fontFamily: 'Young Serif',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
