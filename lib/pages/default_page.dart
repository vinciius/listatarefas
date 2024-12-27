import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultPage extends StatelessWidget {
  const DefaultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Página Inicial',
            style: TextStyle(
              fontSize: 36,
            ),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Center(

          ),
        ),
      );
  }
}