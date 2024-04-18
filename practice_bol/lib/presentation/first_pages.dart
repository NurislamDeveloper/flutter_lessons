import 'package:flutter/material.dart';
import 'package:practice_bol/data/models/test_model.dart';

class FirstPages extends StatelessWidget {
  const FirstPages({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar(
      title: Text(whole[0].name),
     ),
    );
  }
}