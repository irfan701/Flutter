import 'package:day_eight/bottom_nav_controller.dart';
import 'package:day_eight/languages/Languages.dart';
import 'package:day_eight/pages/AnimationScreenFive.dart';
import 'package:day_eight/pages/AnimationScreenFour.dart';
import 'package:day_eight/pages/AnimationScreenThree.dart';
import 'package:day_eight/pages/AnimationScreenTwo.dart';
import 'package:day_eight/pages/ResAspectRatio.dart';
import 'package:day_eight/pages/ResFittedBox.dart';
import 'package:day_eight/pages/ResFractionallySizedBox.dart';
import 'package:day_eight/pages/ResLayoutBuilder.dart';
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
        initialRoute: '/',
        routes: {
          'first-screen': (context) => AnimationScreenTwo(),
          'second-screen': (context) => AnimatedScreenThree(),
          'third-screen': (context) => AnimationScreenFour(),
          'four-screen': (context) => AnimationScreenFive(),
          'res-one': (context) => ResAspectRatio(),
          'res-two': (context) => ResFittedBox(),
          'res-three': (context) => ResFractionallySizedBox(),
          'res-four': (context) => ResLayoutBuilder(),
        },
        translations: Languages(),
        //locale: Get.deviceLocale,
        // locale: Locale('en', 'US'),
        locale: Locale('bn', 'BD'),
        fallbackLocale: Locale('en', 'US'),
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            brightness: Brightness.dark,
            textTheme: TextTheme(
              headline6: TextStyle(fontSize: 10),
              bodyText2: TextStyle(
                  fontSize: 15, color: Color.fromARGB(255, 72, 178, 231)),
            ),
            //scaffoldBackgroundColor: Color.fromARGB(255, 235, 27, 27)),
            floatingActionButtonTheme: FloatingActionButtonThemeData(
                backgroundColor: Colors.amber,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                ))),
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(primary: Colors.greenAccent))),
        home: BottomNavController());
  }
}
