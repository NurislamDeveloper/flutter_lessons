import 'package:burger_page/data/constans/color_and_style.dart';
import 'package:burger_page/data/constans/contans/model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pancake extends StatelessWidget {
  const Pancake({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StyleOfAll.color,
      appBar: AppBar(
         iconTheme: StyleOfAll.styleoFButtom, // Set the color of the back arrow
         backgroundColor: StyleOfAll.color,
        centerTitle: true,
        title: Text(
          "Pancake",
          style: GoogleFonts.almendra(
            textStyle: StyleOfAll.myApp,
          ),
        ),
        shadowColor: Colors.black,
        elevation: 5,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Image.asset('assets/pancake.png',
              height: 150,
              width: 200,
              fit:BoxFit.fill
             ),
            ],
          ),
           Text(Models.recipies[4],
          style: StyleOfAll.myApp,
           ),
        ],
      ),
    );
  }
}