import 'package:first_app/details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAdsScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blueGrey
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(_controller.text);
        },
        child: Icon(Icons.abc),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: [
                TextField(
                  controller: _controller,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(hintText: "Enter Your Email"),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "This field can't be empty";
                    } else if (val.length < 4) {
                      return "Enter a valid email";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(hintText: "Enter Your Name"),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "This field can't be empty";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(hintText: "Enter Your Pasword"),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "This field can't be empty";
                    } else if (val.length < 7) {
                      return "Password length must be 7 -9 digit";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 400,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (_) => DetailsScreen()));
                      }
                    },
                    child: Text("Save"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
