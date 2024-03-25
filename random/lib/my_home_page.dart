import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Random random = Random();
  int esep1 = Random().nextInt(6) + 1;
  int esep = Random().nextInt(6) + 1;

  void acticing() {
    setState(() {
      esep1 = random.nextInt(6) + 1;
      esep = random.nextInt(6) + 1;
      if (esep == 5 && esep1 == 5) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            // Your widget code here
            return const Center(
              child: Text(
                "super",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            );
          },
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Image.asset("assets/image/dice_$esep.jpg"),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Image.asset("assets/image/dice_$esep1.jpg"),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  acticing();
                });
              },
              icon: const Icon(
                Icons.tab,
              ),
              label: const Text(
                "Play",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
