import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final players = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AlaToo(players: players, imageName: 'assets/image/first.png', onTap: () {players.play(AssetSource("notes/third.mp3")); },),
          AlaToo(players: players, imageName: 'assets/image/second.jpg', onTap: () {players.play(AssetSource("notes/fourth.mp3")); },),
          //here I have to change ui of screen and add the controller like stop 
        ],
      ),
    );
  }
}

class AlaToo extends StatelessWidget {
  const AlaToo({
    super.key,
    required this.players,
    required this.imageName,
    required this.onTap,
  });

  final AudioPlayer players;
  final String imageName;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Image.asset(
          imageName,fit: BoxFit.cover,
        ),
      ),
    );
  }
}
