import 'package:flutter/material.dart';
import 'package:pratice_svg/features/presentions/constans/style_of_app.dart';
import 'package:pratice_svg/features/presentions/pages/main.dart';

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
        appBarTheme: const AppBarTheme(
          backgroundColor: App.appColor,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}
