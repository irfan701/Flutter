import 'package:flutter/material.dart';

class AnimatedScreenThree extends StatefulWidget {
  @override
  State<AnimatedScreenThree> createState() => _AnimatedScreenThreeState();
}

class _AnimatedScreenThreeState extends State<AnimatedScreenThree> {
  double _right = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: 200,
              color: Colors.limeAccent,
              child: Stack(
                children: [
                  AnimatedPositioned(
                      right: _right,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _right = 50;
                            });
                          },
                          child: Text("Animate")),
                      duration: Duration(seconds: 3))
                ],
              ),
            )),
      ),
    );
  }
}
