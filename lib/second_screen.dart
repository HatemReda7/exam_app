import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SecondScreen extends StatelessWidget {
  static const String routeName="Second Screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,), label: "",),
            BottomNavigationBarItem(icon: Image.asset("assets/images/navigation-pointer-01.png"), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ]),
    );
  }
}
