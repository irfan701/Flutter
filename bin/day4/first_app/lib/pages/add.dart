import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.green
        body: SafeArea(
      child: Column(
        children: [
          Card(
            elevation: 5,
            child: ListTile(
              leading: CircleAvatar(),
              title: Text("This is title"),
              subtitle: Text("This is Subtitle"),
              trailing: Text("\$ 250"),
            ),
          ),
          Container(
              width: 159,
              height: 180,
              color: Colors.amberAccent,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                      top: -50,
                      child: Image.asset(
                        'assets/fruits.png',
                        width: 140,
                      )),
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Hello"),
                      Text("Hello"),
                      Text("Hello"),
                      Text("Hello"),
                    ],
                  )
                ],
              ))
        ],
      ),
    ));
  }
}
