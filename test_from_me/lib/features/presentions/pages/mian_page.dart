import 'package:flutter/material.dart';
import 'package:test_from_me/features/data/contans/app_baground.dart';
import 'package:test_from_me/features/data/contans/style_of_cards.dart';
import 'package:test_from_me/features/data/contans/text_from.dart';
import 'package:test_from_me/features/presentions/widgets/cards.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppBag.scaffolBag,
      appBar: AppBar(
        backgroundColor: AppBag.backgroundColor,
        centerTitle: true,
        title: const Text(TextFromCards.appName,style: StyleOfCards.appStyle),
      ),
      body:const  Column(
        children: [
          Cards(
            TextFromCards.namOfsea ,
            images: 'assets/image/seaa.jpeg',
          ),
          Cards(
            TextFromCards.nameOfOcean ,
            images: 'assets/image/second_sea.jpeg',
          ),
        ],
      ),
    );
  }
}
