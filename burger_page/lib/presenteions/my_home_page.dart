import 'package:burger_page/data/constans/color_and_style.dart';
import 'package:burger_page/presenteions/widgets/doner.dart';
import 'package:burger_page/presenteions/widgets/hamburgeres.dart';
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
      body: ListView.builder(
        itemCount:pages.length,
        scrollDirection: Axis.vertical,
        // ignore: avoid_types_as_parameter_names
        itemBuilder: (BuildContext context  ,int index) {
         return  InkWell(
          onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => pages[index]));},
           child: Card(
            color:Colors.white ,
            child:Row(
              children: [
                Image.asset('assets/doner.png',// Accessing image dynamically using index
                    // width: 100, // Adjust as needed
                    // height: 100,
                     // Adjust as needed
),
                   Text(nameOfMenue[index]),
              ],
            ),
                   ),
         );
       },
      ),
    );
  }
}
