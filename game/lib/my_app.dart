import 'package:flutter/material.dart';

import 'my_home _page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        backgroundColor: Colors.white,
        toolbarHeight: 60,
       ),
       scaffoldBackgroundColor: Colors.yellowAccent,
      ),
      home: const MyHomePage(),
    );
  }
}
