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
      initialRoute: ThirdScreen.routeName,
      routes: {
        FirstScreen.routeName : (context) => FirstScreen(),
        SecondScreen.routeName : (context) => SecondScreen(),
        ThirdScreen.routeName : (context) => ThirdScreen(),
      },
    );
  }
}