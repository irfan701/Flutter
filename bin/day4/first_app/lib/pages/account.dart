import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  var myJson = [
    {"name": "irfan", "age": "20"},
    {"name": "hossain", "age": "25"},
    {"name": "arman", "age": "30"},
    {"name": "Emirates", "age": "35"},
  ];
  TextEditingController _userInputController = TextEditingController();
  List<String> todos = [
    "Machine Learning",
    "JAVA SCRIPT",
    "LARAVEL",
    "FLUTTER"
  ];

  Box? todoBox; //NULL SAFETY

  @override
  void initState() {
    //BUILD FUNCTION ER AGEY CALL HOI
    todoBox = Hive.box('todo-list'); //CALL
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                      await todoBox!.add(_userInput); //NULL SAFETY FOR SIGN
                      print("ADDED");
                    },
                    child: Text("Writa a New Todo"))),
            Expanded(
                child: ListView.builder(
                    itemCount: todos.length,
                    itemBuilder: (_, index) {
                      return Card(
                          elevation: 4,
                          child: ListTile(
                              title: Text(todos[index]),
                              trailing: SizedBox(
                                width: 100,
                                child: Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.edit_outlined)),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.delete_forever),
                                      color: Colors.red,
                                    ),
                                  ],
                                ),
                              )));
                    }))
          ]),
        ),
      ),
    );
  }
}
