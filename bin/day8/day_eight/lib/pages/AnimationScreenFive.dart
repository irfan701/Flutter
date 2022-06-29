import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AnimationScreenFive extends StatefulWidget {
  const AnimationScreenFive({Key? key}) : super(key: key);

  @override
  State<AnimationScreenFive> createState() => _AnimationScreenFiveState();
}

class _AnimationScreenFiveState extends State<AnimationScreenFive> {
  Alignment _alignment = Alignment.centerRight;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AnimatedAlign(
              alignment: _alignment,
              duration: Duration(seconds: 3),
              child: Text("Hello Animated Align"),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _alignment = Alignment.centerLeft;
                  });
                },
                child: Text("Change Alignment"))
          ],
        ),
      ),
    );
  }
}
