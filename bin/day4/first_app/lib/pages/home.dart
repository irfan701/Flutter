import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatelessWidget {
  List<String> _categories = [
    'Food',
    'Electronics',
    'Groceries',
    'Dress',
    'SMART WATCH',
    "SOAP"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 30),
          child: Column(
            children: [
              Text("Hello Irfan",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600)),
              Text("Let’s gets something?",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF4F4C4C))),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                        width: 300,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, top: 10),
                          child: Column(
                            children: [
                              Text("40% Off During Covid 19",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  )),
                              Align(
                                  alignment: Alignment.bottomRight,
                                  child: Image.asset(
                                    'assets/fruits.png',
                                    width: 140,
                                  ))
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        width: 300,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, top: 10),
                          child: Column(
                            children: [
                              Text("40% Off During Covid 19",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  )),
                              Align(
                                  alignment: Alignment.bottomRight,
                                  child: Image.asset(
                                    'assets/fruits.png',
                                    width: 140,
                                  ))
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        width: 300,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, top: 10),
                          child: Column(
                            children: [
                              Text("40% Off During Covid 19",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  )),
                              Align(
                                  alignment: Alignment.bottomRight,
                                  child: Image.asset(
                                    'assets/fruits.png',
                                    width: 140,
                                  ))
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Top Categories",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text("View All",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.red)),
                  ),
                ],
              ),
              Container(
                height: 40,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _categories.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 7),
                        child: Container(
                          height: 30,
                          // width: 80,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Text(_categories[index]),
                          )),
                        ),
                      );
                    }),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                  child: Container(
                color: Colors.blue,
              ))
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ),
      ),
    );
  }
}
