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
          )
        ],
      ),
    ));
  }
}
