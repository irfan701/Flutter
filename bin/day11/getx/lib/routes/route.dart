import 'package:get/get.dart';
import 'package:getx/HomeScreen.dart';
import 'package:getx/SecondScreen.dart';

import '../FirstScreen.dart';

const String homeScreen = '/home-screen';
const String firstScreen = '/first-screen';

const String secondScreen = '/second-screen';

List<GetPage> GetPages = [
  GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      transition: Transition.leftToRight),
  GetPage(
      name: firstScreen,
      page: () => SecondScreen(),
      transition: Transition.leftToRight),
  GetPage(
      name: secondScreen,
      page: () => SecondScreen(),
      transition: Transition.leftToRight)
];
