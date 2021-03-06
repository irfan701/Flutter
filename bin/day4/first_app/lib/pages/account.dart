import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive/hive.dart';

import 'package:hive_flutter/hive_flutter.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  // var myJson = [
  //   {"name": "irfan", "age": "20"},
  //   {"name": "hossain", "age": "25"},
  //   {"name": "arman", "age": "30"},
  //   {"name": "Emirates", "age": "35"},
  // ];
  TextEditingController _userInputController = TextEditingController();
  TextEditingController _updateController = TextEditingController();
  // List<String> todos = [
  //   "Machine Learning",
  //   "JAVA SCRIPT",
  //   "LARAVEL",
  //   "FLUTTER"
  // ];

  Box? todoBox; //NULL SAFETY

  @override
  void initState() {
    //BUILD FUNCTION ER AGEY CALL HOI
    todoBox = Hive.box('todo-list'); //CALL
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      //backgroundColor: Colors.red
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(children: [
            TextField(
              controller: _userInputController,
              decoration: InputDecoration(hintText: "Write a new todo"),
            ),
            SizedBox(
                width: 400,
                child: ElevatedButton(
                    onPressed: () async {
                      final _userInput = _userInputController.text;
                      print(_userInput);
                      await todoBox!.add(
                          _userInput); //NULL SAFETY OR NULL CHECKER FOR SIGN
                      print("ADDED");
                    },
                    child: Text("Writa a New Todo"))),
            Expanded(
              child: ValueListenableBuilder(
                valueListenable: Hive.box('todo-list').listenable(),
                builder: (_, box, widget) {
                  return ListView.builder(
                      itemCount: todoBox!.keys.toList().length,
                      itemBuilder: (_, index) {
                        return Card(
                            elevation: 4,
                            child: ListTile(
                                title: Text(todoBox!.getAt(index).toString()),
                                trailing: SizedBox(
                                  width: deviceWidth * 0.3,
                                  child: Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            showDialog(
                                                context: context,
                                                builder: (_) {
                                                  return AlertDialog(
                                                    title:
                                                        Text('Update a Todo'),
                                                    content: Column(
                                                      children: [
                                                        TextField(
                                                          controller:
                                                              _updateController,
                                                          decoration:
                                                              InputDecoration(
                                                                  hintText:
                                                                      "Write a Update todo"),
                                                        ),
                                                        SizedBox(
                                                            width: 400,
                                                            child:
                                                                ElevatedButton(
                                                                    onPressed:
                                                                        () async {
                                                                      final _updateInput =
                                                                          _updateController
                                                                              .text;
                                                                      print(
                                                                          _updateInput);

                                                                      await todoBox!.putAt(
                                                                          index,
                                                                          _updateInput);
                                                                      //NULL SAFETY OR NULL CHECKER FOR SIGN
                                                                      Navigator.pop(
                                                                          context);
                                                                    },
                                                                    child: Text(
                                                                        "Writa a Update Todo"))),
                                                      ],
                                                    ),
                                                  );
                                                });
                                          },
                                          icon: Icon(Icons.edit_outlined)),
                                      IconButton(
                                        onPressed: () async {
                                          await todoBox!.deleteAt(index);
                                          Fluttertoast.showToast(
                                              msg: "DELETE SUCCESS",
                                              backgroundColor: Colors.red,
                                              textColor: Colors.white,
                                              fontSize: 16.0);
                                        },
                                        icon: Icon(Icons.delete_forever),
                                        color: Colors.red,
                                      ),
                                    ],
                                  ),
                                )));
                      });
                },
              ),
            )
          ]),
        ),
      ),
    );
  }
}
