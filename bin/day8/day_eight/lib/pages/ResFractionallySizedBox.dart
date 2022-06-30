import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ResFractionallySizedBox extends StatelessWidget {
  const ResFractionallySizedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            height: 400,
            width: 400,
            color: Colors.red,
            child: FractionallySizedBox(
              heightFactor: 0.5,
              widthFactor: 0.9, //50 percent
              child: Container(
                // height: 200,
                // width: 200,    //no need
                color: Colors.green,
              ),
            ),
          )
        ],
      ),
    ));
  }
}
