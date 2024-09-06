// ignore_for_file: must_be_immutable, prefer_const_constructors
import 'package:flutter/material.dart';

class GeneralButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;

  GeneralButton({
    super.key,
    required this.text,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.amber,
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Rubik',
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.purple
        ),
        ),  
    );
  }
}