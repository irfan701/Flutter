import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ResFittedBox extends StatelessWidget {
  const ResFittedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FittedBox(
          fit: BoxFit.fill,
          child: Row(
            children: [
              Container(
                width: 300,
                height: 300,
                color: Colors.red,
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.green,
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
