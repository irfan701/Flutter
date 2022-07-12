import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  int balance;

  DetailsScreen({required this.balance});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [Text(balance.toString())],
        ),
      ),
    );
  }
}
