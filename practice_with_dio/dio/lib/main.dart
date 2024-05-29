import 'package:dio/features/presentetion/pages/my_home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       theme: ThemeData(),
      home: const  MyHomePage(),
    );
  }
}

