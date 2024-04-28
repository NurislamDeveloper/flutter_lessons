import 'package:flutter/material.dart';
import 'package:statefullwidget/my_home_pages.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:CounterApp() ,
    );
  }
}