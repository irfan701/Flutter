import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ResLayoutBuilder extends StatelessWidget {
  const ResLayoutBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: LayoutBuilder(builder: (_, Constraints) {
        if (Constraints.maxWidth < 400) {
          return Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          );
        } else if (Constraints.maxWidth > 480 && Constraints.maxWidth < 800) {
          return Container(
            height: 100,
            width: 100,
            color: Colors.red,
          );
        } else {
          return Container(
            height: 100,
            width: 100,
            color: Colors.green,
          );
        }
      })),
    );
  }
}
