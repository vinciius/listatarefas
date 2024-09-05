// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:todo_app/util/dialog_box.dart';
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

  // method for creating new tasks
    void createNewTask() {
      showDialog(
        context: context, 
        builder: (context) {
          return DialogBox();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Center(
          child: Text(
            'TAREFAS E NOTAS 📋',
            style: TextStyle(
              fontFamily: 'Handjet',
              fontSize: 36,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        backgroundColor: Colors.yellow,
        child: Icon(Icons.add),

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