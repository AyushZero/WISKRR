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
          child: Stack(
            children: [
              Positioned(
                left: 149.25,
                top: 944.50,
                child: Container(
                  width: 124.50,
                  height: 7,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFD9D9D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 112,
                top: 370,
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
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 440,
                  height: 30,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFFF3E1),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignOutside,
                        color: const Color(0xFF5D4016),
                      ),
                    ),
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
