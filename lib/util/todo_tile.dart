// ignore_for_file: must_be_immutable, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, top: 20, right: 25),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(), 
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.purple,
              borderRadius: BorderRadius.circular(12),
            ),
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(16),
          constraints: BoxConstraints(maxWidth: 500),
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
              Container(
                constraints: BoxConstraints(maxWidth: 500),
                child: Text(
                  taskName,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    decoration: taskCompleted 
                    ? TextDecoration.lineThrough 
                    : TextDecoration.none,
                    fontFamily: 'Handjet',
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  ), 
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
