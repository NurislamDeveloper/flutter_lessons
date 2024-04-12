import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:paino/comenets/pian_keys.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Flutter hyloge",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          PianKeys(
            color: Colors.redAccent,
            text: 'D O',
            onTap: () => audioPlayer.play(
              AssetSource(
                "nota1.mp3",
              ),
            ),
          ),
          PianKeys(
            color: Colors.purpleAccent,
            text: 'R E',
            onTap: () {
              audioPlayer.play(
                AssetSource(
                  "nota2.mp3",
                ),
              );
            },
          ),
          PianKeys(
            color: Colors.yellow,
            text: 'M E',
            onTap: () {
              audioPlayer.play(
                AssetSource(
                  "nota3.mp3",
                ),
              );
            },
          ),
          PianKeys(
            color: Colors.green,
            text: 'F A',
            onTap: () {
              audioPlayer.play(
                AssetSource(
                  "nota4.mp3",
                ),
              );
            },
          ),
          PianKeys(
            color: const Color.fromARGB(255, 0, 230, 238),
            text: 'S O L',
            onTap: () {
              audioPlayer.play(
                AssetSource(
                  "nota5.mp3",
                ),
              );
            },
          ),
          PianKeys(
            color: Colors.blue,
            text: 'L A',
            onTap: () {
              audioPlayer.play(
                AssetSource(
                  "nota6.mp3",
                ),
              );
            },
          ),
          PianKeys(
            color: Colors.orange,
            text: 'S I',
            onTap: () {
              audioPlayer.play(
                AssetSource(
                  "nota7.mp3",
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
