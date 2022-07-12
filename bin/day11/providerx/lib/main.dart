import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/provider/TodoProvider.dart';
import 'package:providers/views/HomeScreen.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (_) => TodoProvider(),
      ),
    ], child: MyApp()),
  );
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
      ),
      home: HomeScreen(),
    );
  }
}
