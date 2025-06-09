import 'package:flutter/material.dart';
import 'package:wiskrr/widgets/custom_textbox.dart';
import 'location_page.dart';

class NamePage extends StatelessWidget {
  const NamePage({super.key});

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
                    'Welcome! How may I call you?',
                    style: TextStyle(
                      color: Color(0xFF5C4015),
                      fontSize: 28,
                      fontFamily: 'Young Serif',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 110),
              const CustomTextBox(hintText: 'Full Name'),
              const SizedBox(height: 33),
              const CustomTextBox(hintText: 'User Id'),
              const SizedBox(height: 120),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LocPage()),
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
