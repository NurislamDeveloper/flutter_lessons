import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECB90B),
      appBar: AppBar(
        backgroundColor: const Color(0xFFECB90B),
        shadowColor: Colors.black,
        elevation: 10,
        centerTitle: true,
        title: const Text(
          "HomeWork",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                  const Text(
                  "I'am Rich",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Sofia-Regular",
                  ),
                ),
               Image.asset('assets/image/kamen.png'),
            ],
          ),
        ),
      );
  }
}
