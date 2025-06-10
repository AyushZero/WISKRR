import 'package:flutter/material.dart';
import 'package:wiskrr/screens/signup_page.dart';
import 'package:wiskrr/widgets/custom_textbox.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFFFF3E1),
      body: Center(
        child: SizedBox(
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
                'Sign In',
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
              const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      'Forgot Credentials?',
                      style: TextStyle(
                        color: Color(0xFF5C4015),
                        fontSize: 14,
                        fontFamily: 'Young Serif',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 120),
              Container(
                width: 125,
                height: 43,
                decoration: ShapeDecoration(
                  color: const Color(0xFF5D4016),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Color(0xFFFFEACC),
                      fontSize: 18,
                      fontFamily: 'Young Serif',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SignUpPage()),
                ),
                child: const Text(
                  'or Sign Up',
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
