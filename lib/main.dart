import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF3E1),
        body: Center(
          child: Container(
            width: 440,
            height: 956,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(color: const Color(0xFFFFF3E1)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 150), // <-- vertical position of the image
                Container(
                  width: 156,
                  height: 156,
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
                Text(
                  'Sign Up',
                  style: TextStyle(
                    color: const Color(0xFF5C4015),
                    fontSize: 30,
                    fontFamily: 'Young Serif',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
        )

    );
  }
}
