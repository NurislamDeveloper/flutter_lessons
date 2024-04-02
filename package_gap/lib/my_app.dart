import 'package:flutter/material.dart';
import 'package:package_gap/my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.blue.shade900,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}
