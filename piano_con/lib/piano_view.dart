import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:gap/gap.dart';
import 'package:piano_con/appbar.dart';
import 'package:piano_con/black_buttom.dart';

class PianaView extends StatelessWidget {
  const PianaView({super.key, });
  

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    List<String> notes = [
      "f1",
      "f2",
      "f3",
      "f4",
      "f5",
      "f6",
      "f7",
      "f1",
      "f2",
      "f3",
      "f4",
      "f5",
      "f6",
      "f7",
    ];

   final List <String> music = [
     "nota1",
     "nota2",
     "nota3",
     "nota4",
     "nota5",
     "nota6",
     "nota7",
     "nota1",
     "nota2",
     "nota3",
     "nota4",
     "nota5",
     "nota6",
     "nota7",
   ];
    return Scaffold(
      appBar: myAppBar(),
      body: Column(
        children: [
          Expanded(child: Container()),
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                ListView.builder(
                  itemCount: 14,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: ()async {
                       await player.play(AssetSource("${music[index]}.mp3"));
                      },
                      child: Container(
                        margin: const EdgeInsets.all(
                          2,
                        ),
                        width: 55,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            5,
                          ),
                          color: Colors.grey.withOpacity(
                            0.3,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              notes[index],
                              style: const TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                Positioned(
                  left: 37,
                  child: Row(
                    children: [
                      BlackButton(notes: notes[0],nota: 1,),
                      const Gap(10),
                      BlackButton(notes: notes[1],nota: 2,),
                      const Gap(60),
                      BlackButton(notes: notes[3],nota: 3,),
                      const Gap(15),
                      BlackButton(notes: notes[4],nota: 4,),
                      const Gap(8),
                      BlackButton(notes: notes[5],nota: 5,),
                      const Gap(63),
                      BlackButton(notes: notes[6],nota: 6,),
                      const Gap(15),
                      BlackButton(notes: notes[7],nota: 7,),
                      const Gap(65),
                      BlackButton(notes: notes[8],nota: 1,),
                      const Gap(12),
                      BlackButton(notes: notes[9],nota: 2,),
                      const Gap(10),
                      BlackButton(notes: notes[10],nota: 3,),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

