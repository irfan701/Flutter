import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/provider/TodoProvider.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final todos = Provider.of<TodoProvider>(
        context); //Todo provider class  er sob kico access kortey parvo
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("Todos Length: ${todos.todos.length}"),

            //data passing any pages by provider without constructor & statefull wideget
            //add provider pub.dev
            //model Class,
            //Provider(logic)
            //ui te todo provider er instance create Korlam(),
            //main.dart e Chnage Notifier Provider add korlam
          ],
        ),
      ),
    );
  }
}
