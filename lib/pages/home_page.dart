import 'package:flutter/material.dart';
import 'package:todo_app/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // list of todo tasks
  List toDoList = [
    ["Aprender Flutter", false],
    ["Sair pra correr", false],

  ];
  
  // checkbox was tapped
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Text('TAREFAS E NOTAS 📋'),
      ),
      body: ListView.builder(
        itemCount: toDoList.length, 
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: toDoList[index] [0], 
            taskCompleted: toDoList[index] [1], 
            onChanged: (value) => checkBoxChanged(value, index),
            );
          },
        ),
    );
  }
}