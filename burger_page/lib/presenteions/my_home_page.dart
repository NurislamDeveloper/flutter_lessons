import 'package:burger_page/data/constans/color_and_style.dart';
import 'package:burger_page/presenteions/widgets/doner.dart';
import 'package:burger_page/presenteions/widgets/hamburgeres.dart';
import 'package:burger_page/presenteions/widgets/my_listview.dart';
import 'package:burger_page/presenteions/widgets/pancarke.dart';
import 'package:burger_page/presenteions/widgets/pizza.dart';
import 'package:burger_page/presenteions/widgets/sandwitch.dart';
import 'package:burger_page/presenteions/widgets/shaurma.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final List <Widget>pages = [
      const Hamnurgers(),
      const ShaurmaPage(),
      const Doner(),
      const Pancake(),
      const Pizza(),
      const Sandwitch(),
    ]; 
    final List <String> nameOfMenue = [
    "Hambugers",
    "Shaurma",
    "Doner",
    "Pancake",
    "Pizza",
    "Sandwitch",

    ];

    return Scaffold(
      backgroundColor: StyleOfAll.color,
      appBar: AppBar(
        iconTheme: StyleOfAll.styleoFButtom, // Set the color of the back arrow      
        backgroundColor: StyleOfAll.color,
        centerTitle: true,
        title: Text(
          "My App",
          style: GoogleFonts.almendra(
            textStyle: StyleOfAll.myApp,
           ),
         ),
        shadowColor: Colors.black,
        elevation: 5,
      ),
      body: MyListView(pages: pages, nameOfMenue: nameOfMenue),
    );
  }
}

