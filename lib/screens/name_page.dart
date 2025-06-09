import 'package:flutter/material.dart';
import 'package:wiskrr/widgets/custom_textbox.dart';
import '../widgets/primary_button.dart';
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
              PrimaryButton(
                label: 'Next',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LocPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

}
