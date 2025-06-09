import 'package:flutter/material.dart';
import 'package:wiskrr/screens/name_page.dart';
import 'package:wiskrr/screens/welcome_page.dart';
import 'package:wiskrr/widgets/custom_textbox.dart';

class LocPage extends StatelessWidget {
  const LocPage({super.key});

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
            children: [
              const SizedBox(height: 150),
              Padding(
                padding: EdgeInsets.only(left: size.width * 0.06),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Hey, User! May I assist you in locating your neighbor?',
                    style: TextStyle(
                      color: Color(0xFF5C4015),
                      fontSize: 28,
                      fontFamily: 'Young Serif',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const CustomTextBox(hintText: 'Find Location', height: 30, textSize: 14),
              const SizedBox(height: 280),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NamePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFFEACC),
                  foregroundColor: Color(0xFF5D4016),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                    side: BorderSide(color: const Color(0xFF5C4015), width: 1),
                  ),
                  minimumSize: Size(220, 43),
                ),
                child: const Text(
                  'Detect Automatically',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Young Serif',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WelcomePage()),
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
                  'Next',
                  style: TextStyle(
                    fontSize: 18,
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
