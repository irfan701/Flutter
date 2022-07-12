import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/provider/TodoProvider.dart';

class HomeScreen extends StatelessWidget {
  int _counter = 0;

  TextEditingController _titleController = TextEditingController();
  TextEditingController _desController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final todos = Provider.of<TodoProvider>(
        context); //Todo provider class  er sob kico access kortey parvo

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (_) => AlertDialog(
                    title: Text("Add New Todo"),
                    content: Column(
                      children: [
                        TextField(
                          controller: _titleController,
                          decoration: InputDecoration(hintText: "title"),
                        ),
                        TextField(
                          controller: _desController,
                          decoration: InputDecoration(hintText: "Description"),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              final title = _titleController.text;
                              final description = _desController.text;
                              todos.addNewTodo(title, description);
                              Navigator.pop(context);
                            },
                            child: Text("ADD"))
                      ],
                    ),
                  ));
        },
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
          itemCount: todos.todos.length,
          itemBuilder: (_, index) {
            return Card(
              child: ListTile(
                title: Text(todos.todos[index].title),
                subtitle: Text(todos.todos[index].description),
                trailing: IconButton(
                    onPressed: () => todos.deleteTodo(index),
                    icon: Icon(Icons.remove_circle)),
              ),
            );
          }),
    );
  }
}
