import 'package:first_app/details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExtraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.red

      body: SafeArea(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              ElevatedButton(

                  /*
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        CupertinoPageRoute(builder: (_) => DetailsScreen()));
                  },

*/

                  onPressed: () {
                    Navigator.pushNamed(context, 'second-screen');
                  },
                  child: Text("First Screen"))
              //pushReplacement =>Not Keep Track for pop=>go to direct home screen
              //MaterialPageRoute
            ],
          ),
        ),
      ),
    );
  }
}
