import 'package:flutter/material.dart';
import 'package:practice_with_listview_builder/list_pages.dart';

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
        centerTitle: true,
        title:const  Text(
          "ListViewBuilder",
        ),
      ),
      body: ListPages(),
    );
  }
}