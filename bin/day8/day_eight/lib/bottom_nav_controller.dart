import 'package:day_eight/pages/AnimationScreen.dart';
import 'package:day_eight/pages/CodeAnimationScreen.dart';
import 'package:day_eight/pages/LocalizationScreen.dart';
import 'package:day_eight/pages/NesScrollView.dart';
import 'package:day_eight/pages/Responsive.dart';
import 'package:flutter/material.dart';

import 'package:day_eight/pages/HomeScreen.dart';

class BottomNavController extends StatefulWidget {
  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  final _pages = [
    HomeScreen(),
    LocalizationScreen(),
    AnimationScreen(),
    CodeAnimationScreen(),
    Responsive(),
    NesScrollView()
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        // backgroundColor: Color.fromARGB(255, 190, 27, 27),
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_activity), label: "Localization"),
          BottomNavigationBarItem(
              icon: Icon(Icons.animation), label: "Animation"),
          BottomNavigationBarItem(
              icon: Icon(Icons.animation), label: "C Animation"),
          BottomNavigationBarItem(
              icon: Icon(Icons.reset_tv), label: "Responsive"),
          BottomNavigationBarItem(icon: Icon(Icons.reset_tv), label: "NSV"),
        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}
