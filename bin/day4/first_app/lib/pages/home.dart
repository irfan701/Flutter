import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.amber
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.only(top: 30, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello IRFAN",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 25,
            ),
          ),
          Text(
            "Let’s gets something?",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: Color(0xFF4F4C4C),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Hello Afran",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 25,
            ),
          ),
        ],
      ),
    )));
  }
}
