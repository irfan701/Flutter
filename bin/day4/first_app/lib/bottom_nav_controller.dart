import 'package:first_app/pages/ExtraScreen.dart';
import 'package:first_app/pages/account.dart';
import 'package:first_app/pages/add.dart';
import 'package:first_app/pages/chat.dart';
import 'package:first_app/pages/home.dart';
import 'package:first_app/pages/my_ads.dart';
import 'package:flutter/material.dart';

class BottomNavController extends StatefulWidget {
  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  final _pages = [
    HomeScreen(),
    MyAdsScreen(),
    AddScreen(),
    ChatScreen(),
    AccountScreen(),
    ExtraScreen()
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: "My Adds"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
          BottomNavigationBarItem(icon: Icon(Icons.dangerous), label: "Extra")
        ],
        selectedItemColor: Color(0xFF5364F4),
        unselectedItemColor: Color(0xFfC4C4C4),
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: _pages[_currentIndex],
    );
  }
}
