// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:listatarefas/pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  // initializes hive
  await Hive.initFlutter();
  // open a box 
  // ignore: unused_local_variable
  var box = await Hive.openBox('mybox');
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.green,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green,
          centerTitle: true,
          elevation: 10,
          shadowColor: Colors.black,
          titleTextStyle: GoogleFonts.handjet(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
