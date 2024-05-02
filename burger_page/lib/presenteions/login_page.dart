import 'package:burger_page/data/constans/color_and_style.dart';
import 'package:burger_page/presenteions/widgets/my_boddy.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
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
      body:const  MyBoddy(),
    );
  }
}

