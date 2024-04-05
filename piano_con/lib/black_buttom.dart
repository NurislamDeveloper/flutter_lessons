import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class BlackButton extends StatelessWidget {
  const BlackButton({
    super.key,
    required this.notes, required this.nota, 
  });
   final int nota;
  final String notes;

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    return InkWell(
      onTap: (){
        player.play(AssetSource('nota$nota.mp3'));
      },
      child: Container(
        width: 50,
        height: 160,
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(
              5,
            ),
            bottomRight: Radius.circular(
              5,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
            notes,
            style:const TextStyle(
              color: Colors.white,
            ),
           ),
          ],
        ),
      ),
    );
  }
}
