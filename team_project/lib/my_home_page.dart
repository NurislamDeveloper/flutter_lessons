import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int first = Random().nextInt(6) + 1;
  int second = Random().nextInt(6) + 1;
    late ConfettiController _controllerTopCenter;
    
    @override
   void initState() {
    super.initState();
    _controllerTopCenter = ConfettiController(
      duration: const Duration(seconds: 10,

      ),
    );
   }
   void all () {
    setState(() {
      first = Random().nextInt(6) + 1;
      second = Random().nextInt(6) + 1;
      if(first == 2 && second == 4){
      _controllerTopCenter.play();
      }
      });
    }
@override
    void dispose() {
    super.dispose();
    _controllerTopCenter.dispose();
    }
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Dice",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
        children: [  
          Row(
         
            children: [
              Expanded(
                child: Image.asset("assets/image/dice$first.png"),
              ),
              const SizedBox(
                width: 60,
              ),
              Expanded(
                child: Image.asset("assets/image/dice$second.png"),
              ),
            ],
          ),
        const   SizedBox(height: 50,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrangeAccent,
            ),
            onPressed: () {
                 all();
            },
            child: const Text(
              "Click it",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
          ),
          ConfettiWidget(
            confettiController: _controllerTopCenter,
              blastDirection: pi / -2,
              emissionFrequency: 0.05,
              numberOfParticles: 10,
              blastDirectionality: BlastDirectionality.explosive,
            ),
        ],
      ),
    );
  }
}
