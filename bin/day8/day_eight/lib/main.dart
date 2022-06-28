import 'package:day_eight/bottom_nav_controller.dart';
import 'package:day_eight/languages/Languages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        translations: Languages(),
        //locale: Get.deviceLocale,
        // locale: Locale('en', 'US'),
        locale: Locale('bn', 'BD'),
        fallbackLocale: Locale('en', 'US'),
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BottomNavController());
  }
}
