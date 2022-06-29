import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class LocalizationScreen extends StatelessWidget {
  const LocalizationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.green,

        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('app_name'.tr, style: TextStyle(fontSize: 40)),
            Text('app_title'.tr, style: TextStyle(fontSize: 40)),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.updateLocale(Locale('bn', 'BD'));
                },
                child: Text('Bangla')),
            ElevatedButton(
                onPressed: () {
                  Get.updateLocale(Locale('en', 'US'));
                },
                child: Text('English')),
            SizedBox(
              height: 20,
            ),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    ));
  }
}
