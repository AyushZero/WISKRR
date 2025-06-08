import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 440,
        height: 956,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          color: Color(0xFFFFF3E1),
        ),
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
            Container(
              width: 329,
              height: 49,
              decoration: ShapeDecoration(
                color: Color(0xFFFFEACC),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: Color(0xFF5C4015),
                  ),
                  borderRadius: BorderRadius.circular(17),
                ),
              ),
            ),
            const SizedBox(height: 33),
            Container(
              width: 329,
              height: 49,
              decoration: ShapeDecoration(
                color: Color(0xFFFFEACC),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: Color(0xFF5C4015),
                  ),
                  borderRadius: BorderRadius.circular(17),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
