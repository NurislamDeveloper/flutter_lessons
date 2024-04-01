import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
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
final player = AudioPlayer();

  bool isPlay = false;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    _controllerTopCenter = ConfettiController(
      duration: const Duration(
        seconds: 5,
      ),
    );
    controller = AnimationController(
      vsync: this,
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
          controller;
         player.play(AssetSource('notes/nota1.mp3'));
        }
      },
    );
  }

  @override
  void dispose() {
    _controllerTopCenter.dispose();
    controller.dispose();
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
              onPressed: () {
                setState(() {
                  if (isPlay = false) {
                    controller.forward();
                  } else {
                    controller.reverse();
                    isPlay = true;
                  }
                  activity();
                 },
                );
              },
              child: Column(
                children: [
                  AnimatedIcon(
                    icon: AnimatedIcons.play_pause,
                    progress: controller,
                  ),
                  const Text(
                    "Click",
                  ),
                ],
              ),
            ),
            // ElevatedButton.icon(
            //   style: const ButtonStyle(
            //     backgroundColor: MaterialStatePropertyAll(
            //       Colors.blueAccent,
            //     ),
            //   ),
            //   onPressed: () {
            //     if (isPlay = false) {
            //       controller.forward();
            //       isPlay = true;
            //     } else {
            //       controller.reverse();
            //       isPlay = false;
            //     }
            //     setState(() {
            //       activity();
            //     });
            //   },
            //   icon: const Icon(
            //     Icons.play_arrow,
            //   ),
            //   // icon: const Icon(
            //   //   Icons.play_arrow,
            //   //   size: 22,
            //   //   color: Colors.white,

            //   label: const Text(
            //     "Click it",
            //     style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 22,
            //     ),
            //   ),
            // ),
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
