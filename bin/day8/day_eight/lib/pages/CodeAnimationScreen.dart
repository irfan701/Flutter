import 'package:flutter/material.dart';

class CodeAnimationScreen extends StatefulWidget {
  @override
  State<CodeAnimationScreen> createState() => _CodeAnimationScreenState();
}

class _CodeAnimationScreenState extends State<CodeAnimationScreen> {
  double _height = 100;
  double _width = 200;
  Color _color = Colors.green;

  void animatedContainer() {
    setState(() {
      _height = 300;
      _width = 300;
      _color = Colors.red;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 3),
              curve: Curves.bounceInOut,
              height: _height,
              width: _width,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              onEnd: () {
                setState(() {
                  _width = _width == 200 ? 400 : 200;
                  _color = _color == Colors.green ? Colors.red : Colors.green;
                });
              },
            ),
            ElevatedButton(
                onPressed: () => animatedContainer(), child: Text("Animate")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'first-screen');
                },
                child: Text("First Screen")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'second-screen');
                },
                child: Text("Second Screen")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'third-screen');
                },
                child: Text("Third Screen")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'four-screen');
                },
                child: Text("Four Screen")),
          ],
        ),
      ),
    );
  }
}
