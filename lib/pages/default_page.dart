import 'package:flutter/material.dart';

class DefaultPage extends StatelessWidget {
  const DefaultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Center(
          child: Text(
            'PÁGINA MODELO 📓',
            style: TextStyle(
              fontFamily: 'Handjet',
              fontSize: 36,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Text(
          'Essa página é o esqueleto da página principal.',
          style: TextStyle(
            fontFamily: 'Handjet',
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}