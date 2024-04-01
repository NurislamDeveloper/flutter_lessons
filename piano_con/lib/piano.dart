import 'package:flutter/material.dart';

import 'piano_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme:const  AppBarTheme(
        color: Colors.black,
       ),
      ),
      home: const PianaView(),
    );
  }
}
