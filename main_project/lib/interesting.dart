import 'package:flutter/material.dart';

class MyInteresting extends StatelessWidget {
  const MyInteresting({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.purple,
      title: const Text("Interesting",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.normal),),
      ),
    );
  }
}