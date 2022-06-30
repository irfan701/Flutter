import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Responsive extends StatelessWidget {
  const Responsive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'res-one');
                },
                child: Text("Aspect Ratio")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'res-two');
                },
                child: Text("Fitted Box")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'res-three');
                },
                child: Text("Fractionally Sized Box")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'res-four');
                },
                child: Text("Layout Builder")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'res-five');
                },
                child: Text("Media Query")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'res-six');
                },
                child: Text("Orientation Builder")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'res-seven');
                },
                child: Text("Flutter Screen Util")),
          ],
        ),
      ),
    ));
  }
}
