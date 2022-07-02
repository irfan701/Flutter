import 'package:day_eight/pages/TabBarPageOne.dart';
import 'package:day_eight/pages/TabBarPageTwo.dart';
import 'package:flutter/material.dart';

class TabBarP extends StatelessWidget {
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
