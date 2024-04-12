import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'piano_keys.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 10, 55, 92),
        centerTitle: true,
        title: const Text(
          "HylophoneByMe",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body:  Column(
        children: [
          PianaKeys(nameOfKeys: "do",colorOfText: Colors.white, colorsOfConteiner: Colors.blue,onTap:() => player.play(AssetSource("assets/notes/do.mp3")) ,),
        ],
      ),
    );
  }
}

