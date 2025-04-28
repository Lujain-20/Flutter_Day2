import 'package:day2/screen1.dart';
import 'package:day2/screen2.dart';
import 'package:day2/screen3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: 
      Screen3(),
      // Screen2(),
      // MyWidget(),
         
    );
  }
}