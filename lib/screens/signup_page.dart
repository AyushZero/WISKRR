import 'package:flutter/material.dart';
import 'package:wiskrr/screens/signin_page.dart';
import 'package:wiskrr/widgets/custom_textbox.dart';

import 'name_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(  // <-- FIX: Add this
      backgroundColor: const Color(0xFFFFF3E1),  // move color here
      body: Center(
        child: Container(
          width: size.width * 0.9,
          height: size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 150),
              Container(
                width: 131,
                height: 131,
                decoration: ShapeDecoration(
                  image: const DecorationImage(
                    image: AssetImage("assets/wiskrr.png"),
                    fit: BoxFit.cover,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(150),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              const Text(
                'Sign Up',
                style: TextStyle(
                  color: Color(0xFF5C4015),
                  fontSize: 30,
                  fontFamily: 'Young Serif',
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 50),
              const CustomTextBox(hintText: 'Email Id/ Phone No.'),
              const SizedBox(height: 33),
              const CustomTextBox(hintText: 'Password'),
              const SizedBox(height: 33),
              const CustomTextBox(hintText: 'Password'),
              const SizedBox(height: 80),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NamePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF5D4016),
                  foregroundColor: Color(0xFFFFEACC),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  minimumSize: Size(125, 43),
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Young Serif',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),

              TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SignInPage()),
                ),
                child: const Text(
                  'or Sign In',
                  style: TextStyle(
                    color: Color(0xFF5D4016),
                    fontSize: 12,
                    fontFamily: 'Young Serif',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
