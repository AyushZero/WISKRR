import 'package:flutter/material.dart';
import 'screens/signin_page.dart'; // import the separate sign-in widget

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
    return const Scaffold(
      backgroundColor: Color(0xFFFFF3E1),
      body: SignInPage(), // use the widget from signin_page.dart
    );
  }
}
