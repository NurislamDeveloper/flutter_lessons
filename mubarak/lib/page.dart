import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/image/Mubarag.jpg"),
          fit: BoxFit.cover,
        ),
      ),
       child: const  Center(
         child:Text(
            "Ramadan Mubarag",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w300,
              fontFamily: "Pacifico-Regular",
            ),
          ),   
         
       ),
    );
  }
}
