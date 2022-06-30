import 'package:flutter/material.dart';

class ResOrientationBuilder extends StatelessWidget {
  const ResOrientationBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(builder: (_, orientation) {
        if (orientation == Orientation.portrait) {
          return Center(child: Text('Portrait'));
        } else {
          return Center(child: Text('Landscape'));
        }
      }),
    );
  }
}
