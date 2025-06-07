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
          child: Center(
            child: Container(
              width: 216,
              height: 216,
              decoration: ShapeDecoration(
                 image: const DecorationImage(
                    image:  AssetImage("assets/wiskrr.png"),
                    fit: BoxFit.cover,
                 ),
                 shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(150),
                 ),
              ),
            ),
          ),
        ),
      )
    );
  }
}
