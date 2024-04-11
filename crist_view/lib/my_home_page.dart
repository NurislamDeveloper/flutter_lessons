import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'cont_pages.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cridview",
        ),
      ),
      body: GridView.count(
        crossAxisCount: 5,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: const <Widget>[
          ContPages( colors: Colors.blue,),
          ContPages( colors: Colors.blue,),
          ContPages( colors: Colors.blue,),
          ContPages( colors: Colors.blue,),
          ContPages( colors: Colors.blue,),


        ],
      ),
    );
  }
}

