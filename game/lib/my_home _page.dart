import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int first = Random().nextInt(6) + 1;
  int second = Random().nextInt(6) + 1;  // we're importing the dart:math library to use the Random class for generating random numbers. The Random class provides methods like nextInt() for generating random integers

  late ConfettiController _controllerTopCenter;

  @override
  void initState() {
    super.initState();
    _controllerTopCenter = ConfettiController(
      duration: const Duration(
        seconds: 5,
      ),
    );
  }

  void activity() {
    setState(
      () {
        first = Random().nextInt(6) + 1;
        second = Random().nextInt(6) + 1;
        if (first == 3 && second == 4) {
          _controllerTopCenter.play();
        }
      },
    );
  }

  @override
  void dispose() {
    _controllerTopCenter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Practice",
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                    ),
                    child: Image.asset(
                      "assets/image/dice$first.png",
                    ),
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 30,
                    ),
                    child: Image.asset(
                      "assets/image/dice$second.png",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed:() {
              activity();
              },
              child:const  Column(
                children: [
                     Text(
                    "Click",
                  ),
                ],
              ),
            ),
            ConfettiWidget(
              confettiController: _controllerTopCenter,
              blastDirection: -pi / 2,
              emissionFrequency: 0.05,
              numberOfParticles: 10,
              blastDirectionality: BlastDirectionality.explosive,
            ),
          ],
        ),
      ),
    );
  }
}
