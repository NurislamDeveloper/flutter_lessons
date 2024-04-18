import 'package:flutter/material.dart';

import 'componets/my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            backgroundColor: Color.fromARGB(
              255,
              255,
              255,
              255,
            ),
            titleTextStyle: TextStyle(
              color: Color.fromARGB(
            255,
            9,
            36,
            81,
          ),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          scaffoldBackgroundColor: const Color.fromARGB(
            255,
            9,
            36,
            81,
          ),
        ),
        home: const MyHomePage());
  }
}
