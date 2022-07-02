import 'package:first_app/bottom_nav_controller.dart';
import 'package:first_app/details_screen.dart';
import 'package:first_app/pages/ExtraScreen.dart';
import 'package:first_app/pages/add.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  runApp(const MyApp());

  var box = await Hive.openBox('todo-list');

  // box.put('name', 'David');
  // print('Name: ${box.get('name')}');
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          /*
        textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme.apply()
        )
*/
          fontFamily: 'Oswald'),
      initialRoute: '/',
      routes: {
        'first-screen': (context) => ExtraScreen(),
        'second-screen': (context) => DetailsScreen()
      },
      home: BottomNavController(),
    );
  }
}
