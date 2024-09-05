// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:todo_app/util/general_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onCancel,
    required this.onSave,
    });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        color: Colors.yellow[400],
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                hintText: "Digite uma nova tarefa",
                hintStyle: TextStyle(
                  fontFamily: 'Handjet',
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
  
            // buttons: save + cancel
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // save button
                  GeneralButton(
                    text: 'Salvar', 
                    onPressed: onSave,
                    ),
                
                  // cancel button
                  GeneralButton(
                    text: 'Cancelar', 
                    onPressed: onCancel,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}