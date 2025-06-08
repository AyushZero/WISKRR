import 'package:flutter/material.dart';

class CustomTextBox extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController? controller;

  const CustomTextBox({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 329,
      height: 49,
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
            fontSize: 18,
            fontFamily: 'Young Serif',
            fontWeight: FontWeight.w400,
          ),
        ),
        style: const TextStyle(
          color: Color(0xFF5C4015),
          fontSize: 18,
          fontFamily: 'Young Serif',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
