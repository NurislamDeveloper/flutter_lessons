import 'package:burger_page/data/constans/color_and_style.dart';
import 'package:burger_page/data/constans/contans/model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Doner extends StatelessWidget {
  const Doner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StyleOfAll.color,
      appBar: AppBar(
         backgroundColor: StyleOfAll.color,
        centerTitle: true,
        title: Text(
          "doner",
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
             Image.asset('assets/doner.png',
              height: 150,
              width: 200,
              fit:BoxFit.fill
             ),
            ],
          ),
          Text(Models.recipies[0],
          style: StyleOfAll.myApp,
           ),
        ],
      ),
    );
  }
}