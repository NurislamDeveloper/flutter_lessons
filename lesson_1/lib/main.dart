import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //it's white page where I will write the code.
        appBar: AppBar( //it's the top of the widget in here 
          backgroundColor: Colors.blueAccent,
          title: const Text(
            "My new Flutter app",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.normal,
              //with this widget I can do change the color or everything I want.
            ),
          ),
        ),
      ),
    );
  }
}
