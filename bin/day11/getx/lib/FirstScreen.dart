import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx/SecondScreen.dart';
import 'package:getx/models/MyDataModel.dart';
import 'package:getx/routes/route.dart';

class FirstScreen extends StatelessWidget {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();

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
            TextButton(
                onPressed: () {
                  Get.defaultDialog(title: "I AM IRFAN");
                },
                child: Text("CLICK TO SHOW")),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _nameController,
              style: TextStyle(color: Colors.amber),
            ),
            TextField(
              controller: _ageController,
              style: TextStyle(color: Color.fromARGB(255, 143, 133, 105)),
            ),
            ElevatedButton(
                onPressed: () {
                  final name = _nameController.text;
                  final age = _ageController.text;
                  final box = GetStorage();
                  box.write("data", MyDataModel(name: name, age: age));
                  print("ADDED");
                },
                child: Text("SAVE")),
            FloatingActionButton(
              onPressed: () => Get.to(SecondScreen()),
              child: Icon(Icons.ac_unit_sharp),
            )
          ],
        ),
      ),
    );
  }
}
