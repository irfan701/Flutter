import 'package:flutter/widgets.dart';
import 'package:providers/models/TodoModel.dart';

class TodoProvider extends ChangeNotifier {
  List<TodoModel> todos = [];

  addNewTodo(title, description) {
    var newTodo = TodoModel(title: title, description: description);
    todos.add(newTodo);
    notifyListeners();
  }

  deleteTodo(index) {
    todos.removeAt(index);
    notifyListeners();
  }
}
