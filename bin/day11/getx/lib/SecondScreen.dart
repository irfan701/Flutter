import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx/models/MyDataModel.dart';

class SecondScreen extends StatelessWidget {
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => print(box.read("data")),
      ),
      // body: Center(
      //     // child: Text("${box.read("data")["age"]}"),
      //     ),
    );
  }
}
