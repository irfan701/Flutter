import 'package:flutter/material.dart';

class NesScrollView extends StatelessWidget {
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
  var _tabs = ["Home", "Profile", "MyAccount"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: DefaultTabController(
        length: _tabs.length,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, isScrolled) {
            return <Widget>[
              SliverOverlapAbsorber(
                /////////////////////////////
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                  expandedHeight: 200.0,
                  pinned: true,
                  forceElevated: isScrolled,
                  bottom: TabBar(
                    tabs: _tabs.map((String name) => Tab(text: name)).toList(),
                  ),
                  ///////////////////////////

                  ////////////////////////////////////

                  flexibleSpace: FlexibleSpaceBar(
                    //title: Text('SliverAppBar Expand'),
                    background: Image.asset(
                      'assets/images/xx.jpg',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  ///////////////////////////////////
                  title: Text('NestedScrollView'),
                ),
              )
            ];
          },
          body: TabBarView(
            children: _tabs.map((String name) {
              return SafeArea(
                top: false,
                bottom: false,
                child: Builder(
                  builder: (BuildContext context) {
                    return CustomScrollView(
                      key: PageStorageKey<String>(name),
                      slivers: <Widget>[
                        SliverOverlapInjector(
                          handle:
                              NestedScrollView.sliverOverlapAbsorberHandleFor(
                                  context),
                        ),
                        SliverPadding(
                          padding: const EdgeInsets.all(8.0),
                          sliver: SliverFixedExtentList(
                            itemExtent: 48.0,
                            delegate: SliverChildBuilderDelegate(
                              (BuildContext context, int index) {
                                return ListTile(
                                  title: Text(_categories[index]),
                                );
                              },
                              childCount: _categories.length,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              );
            }).toList(),
          ),
        ),
      )),
    );
  }
}
//https://flutteragency.com/nestedscrollview-widget/
