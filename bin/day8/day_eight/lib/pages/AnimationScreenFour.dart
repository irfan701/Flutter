import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AnimationScreenFour extends StatefulWidget {
  const AnimationScreenFour({Key? key}) : super(key: key);

  @override
  State<AnimationScreenFour> createState() => _AnimationScreenFourState();
}

class _AnimationScreenFourState extends State<AnimationScreenFour> {
  double _opacity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(
          onPressed: () {
            setState(() {
              _opacity = 0.2;
            });
          },
          child: Text("Change Opacity")),
      body: SafeArea(
        child: Column(
          children: [
            AnimatedOpacity(
              duration: Duration(seconds: 3),
              opacity: _opacity,
              child: Card(
                child: ListTile(
                  title: Text('Hello WOrld'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
