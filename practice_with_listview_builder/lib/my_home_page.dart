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
      backgroundColor:const  Color.fromARGB(255, 3, 22, 37),
      appBar: AppBar(
        centerTitle: true,
        title:const  Text(
          "ListViewBuilder",
        ),
      ),
      body: const ListPages(),
    );
  }
}