// ignore_for_file: prefer_const_literals_to_create_immutables, must_be_immutable
import 'package:flutter/material.dart';
import 'package:todo_app/util/general_button.dart';

class DialogBox extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
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
      backgroundColor: Colors.yellowAccent.shade400,
      content: SizedBox(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                iconColor: Colors.purple,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                hintText: "Digite uma nova tarefa",
                hintStyle: TextStyle(
                  color: Colors.purple.withOpacity(.4),
                  fontFamily: 'Handjet',
                  fontSize: 20,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
            // buttons: save + cancel
            Row(
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
          ],
        ),
      ),
    );
  }
}