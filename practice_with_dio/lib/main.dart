import 'package:flutter/material.dart';
import 'package:practice_with_dio/featrures/presentetion/pages/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: const  MyHomePage(),
    );
  }
}

