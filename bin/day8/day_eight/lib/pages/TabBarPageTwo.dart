import 'package:flutter/material.dart';

class TabBarPageTwo extends StatelessWidget {
  final _categories = [
    "JAVASCRIPT",
    "PHP",
    "LARAVEL",
    "AXIOS",
    "ES6",
    "REACT JS",
    "JQUERY",
    "MERN STACK",
    "SQL",
    "HIVE"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: NestedScrollView(
              headerSliverBuilder: (BuildContext context, isScroll) {
                return <Widget>[
                  SliverAppBar(
                    expandedHeight: 200.0,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                      //title: Text('SliverAppBar Expand'),
                      background: Image.asset(
                        'assets/images/xx.jpg',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    title: Text('NestedScrollView'),
                  )
                ];
              },
              body: ListView.builder(
                  itemCount: _categories.length,
                  itemBuilder: (_, int index) {
                    return Container(
                      height: 80,
                      //  color: Colors.primaries[index % Colors.primaries.length],
                      color: Colors.primaries[index],
                      alignment: Alignment.center,
                      child: Text(
                        _categories[index],
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    );
                  }))),
    );
  }
}
