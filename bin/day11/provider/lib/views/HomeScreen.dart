import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/views/DetailsScreen.dart';

class HomeScreen extends StatelessWidget {
  int balance = 1000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("HOME SCREEN"),
            Text(balance.toString()),
            TextButton(
                onPressed: () => Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (_) => DetailsScreen(
                              balance: balance,
                            ))),
                child: Text('Go to the Details Screen'))
          ],
        ),
      ),
    );
  }
}
