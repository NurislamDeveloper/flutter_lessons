import 'package:burger_page/data/constans/color_and_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Hamnurgers extends StatelessWidget {
  const Hamnurgers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StyleOfAll.color,
      appBar: AppBar(
         backgroundColor: StyleOfAll.color,
        centerTitle: true,
        title: Text(
          "hamburgers",
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
             Image.asset('assets/shaurma.png',
              height: 150,
              width: 200,
              fit:BoxFit.fill
             ),
            ],
          ),
          const Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
          style: StyleOfAll.myApp,
           ),
        ],
      ),
    );
  }
}