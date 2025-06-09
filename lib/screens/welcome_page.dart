import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF3E1),
      body: Align(
        child: const Text(
          'Welcome, User!',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF5C4015),
            fontSize: 45,
            fontFamily: 'Young Serif',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
