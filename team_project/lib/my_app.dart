import 'package:flutter/material.dart';
import 'package:team_project/my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          toolbarHeight: 60,
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 12, 50, 82),
      ),
      home: const MyHomePage(),
    );
  }
}
