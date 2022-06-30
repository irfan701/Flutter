import 'package:flutter/material.dart';

class ResAspectRatio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4 / 2,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.amberAccent,
            ),
          )
        ],
      ),
    );
  }
}
