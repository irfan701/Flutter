import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx/SecondScreen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 5, 36, 7),
        body: Column(
          children: [
            TextButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => SecondScreen())),
              child: Text(
                "Go To Second Screen By Default Route",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () => Get.to(SecondScreen()),
                child: Text("Go To Second Screen By GetX",
                    style: TextStyle(color: Colors.white))),
            SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  Get.snackbar("title", "SNACKBAR");
                },
                child: Text("CLICK TO SHOW")),
            SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  Get.defaultDialog(title: "I AM IRFAN");
                },
                child: Text("CLICK TO SHOW")),
          ],
        ),
      ),
    );
  }
}
