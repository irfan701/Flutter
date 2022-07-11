import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/views/DetailsScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("Home Screen"),
            Text(_counter.toString()),
            TextButton(
                onPressed: () {
                  setState(() {
                    _counter = _counter + 1;
                  });
                },
                child: Text("Increment")),
          ],
        ),
      ),
    );
  }
}
