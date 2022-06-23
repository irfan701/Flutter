import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
              Container(
                height: 150,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
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
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ),
      ),
    );
  }
}
