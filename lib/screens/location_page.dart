import 'package:flutter/material.dart';
import 'package:wiskrr/screens/name_page.dart';
import 'package:wiskrr/widgets/custom_textbox.dart';

import '../widgets/primary_button.dart';

class LocPage extends StatelessWidget {
  const LocPage({super.key});

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
              SecondaryButton(
                label: 'Detect Automatically',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NamePage()),
                  );
                },
              ),
              const SizedBox(height: 10),
              PrimaryButton(
                label: 'Next',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NamePage()),
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
