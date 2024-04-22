import 'package:flutter/material.dart';
import 'package:practice_with_questions/pages/my_home_pages.dart';

import '../constans/app_text_stulyies.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 14, 57, 92),
          titleTextStyle:AppTextStyles.titleStyle
        ),
        scaffoldBackgroundColor:const  Color(0xff363636),
      ),
      home: const MyHomePage("P R A C T I C E"),
    );
  }
}
