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
          PianKeys(color: Colors.redAccent, text: 'do', onTap: ()   => audioPlayer.play(AssetSource("nota1.mp3")),),
          PianKeys(color: Colors.purpleAccent, text: 're', onTap: () {audioPlayer.play(AssetSource("nota2.mp3"));},),
          PianKeys(color: Colors.yellow, text: 'mw', onTap: () {audioPlayer.play(AssetSource("nota3.mp3"));},),
          PianKeys(color: Colors.green, text: 'fa', onTap: () {audioPlayer.play(AssetSource("nota4.mp3"));},),
          PianKeys(color: const Color.fromARGB(255, 0, 230, 238), text: 'sol', onTap: () {audioPlayer.play(AssetSource("nota5.mp3"));},),
          PianKeys(color: Colors.blue, text: 'la', onTap: () {audioPlayer.play(AssetSource("nota6.mp3"));  },),
          PianKeys(color: Colors.orange, text: 'si', onTap: () {audioPlayer.play(AssetSource("nota7.mp3"));},),
        ],
      ),
    );
  }
}

