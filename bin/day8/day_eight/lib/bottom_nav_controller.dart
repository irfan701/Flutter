import 'package:day_eight/pages/LocalizationScreen.dart';
import 'package:flutter/material.dart';

import 'package:day_eight/pages/HomeScreen.dart';

class BottomNavController extends StatefulWidget {
  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  final _pages = [HomeScreen(), LocalizationScreen()];

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
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.redeem_sharp), label: "Home"),
          // BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}
