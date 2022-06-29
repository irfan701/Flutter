import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AnimationScreenTwo extends StatefulWidget {
  const AnimationScreenTwo({Key? key}) : super(key: key);

  @override
  State<AnimationScreenTwo> createState() => _AnimationScreenTwoState();
}

class _AnimationScreenTwoState extends State<AnimationScreenTwo> {
  double _fontSize = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              AnimatedDefaultTextStyle(
                child: Text("We are learning AnimatedDefaultTextStyle"),
                style: TextStyle(fontSize: _fontSize),
                duration: Duration(seconds: 3),
                curve: Curves.easeInBack,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _fontSize = 50;
                    });
                  },
                  child: Text("Animate"))
            ],
          ),
        ),
      ),
    );
  }
}
