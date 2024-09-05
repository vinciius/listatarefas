// ignore_for_file: must_be_immutable, prefer_const_constructors
import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25, 
        top: 20, 
        right: 25),
      child: Container(
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            // checkbox
            Checkbox(
              value: taskCompleted, 
              onChanged: onChanged,
              activeColor: Colors.purple,
              checkColor: Colors.black,
              ),
            // nome da tarefa
            Text(
              taskName,
              style: TextStyle(
                decoration: taskCompleted 
                ? TextDecoration.lineThrough 
                : TextDecoration.none,
                fontFamily: 'Handjet',
                fontSize: 28,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
