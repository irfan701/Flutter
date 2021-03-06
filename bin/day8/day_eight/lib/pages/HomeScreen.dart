import 'package:flutter/material.dart';
import 'TabBarPageOne.dart';
import 'TabBarPageTwo.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.camera)),
              Tab(icon: Icon(Icons.message)),
            ]),
          ),
          body: TabBarView(children: [TabBarPageOne(), TabBarPageTwo()]),
        ));
  }
}
