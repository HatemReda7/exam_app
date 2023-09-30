import 'package:exam_app/first_screen.dart';
import 'package:exam_app/second_screen.dart';
import 'package:exam_app/third_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: FirstScreen.routeName,
      routes: {
        FirstScreen.routeName : (context) => const FirstScreen(),
        SecondScreen.routeName : (context) => const SecondScreen(),
        ThirdScreen.routeName : (context) => const ThirdScreen(),
      },
    );
  }
}