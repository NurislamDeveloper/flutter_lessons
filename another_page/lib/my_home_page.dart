import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xffECB90B) ,
      appBar: AppBar(
        backgroundColor: const Color(0xffECB90B),
        centerTitle: true,
        title: const Text(
          "Homework",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.normal,
          ),
        ),
        shadowColor: Colors.black,
        elevation: 10,
      ),
      body: 
       Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const  Text(
              "I'm Rich",
              style: TextStyle(color: Colors.white,
                fontSize: 48,
                fontWeight: FontWeight.w400,
                fontFamily: "Sofia-Regular"
                ,
              ),
            ),
            Image.asset('assets/image/almaz.png'),
          ],
        ),
      ),
    );
  }
}
