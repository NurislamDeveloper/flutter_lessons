import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:gap/gap.dart';

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
                      BlackButton(notes: notes,nota: 1,),
                      Gap(10),
                        BlackButton(notes: notes,nota: 2,),
                        Gap(10),
                        BlackButton(notes: notes,nota: 3,),
                        Gap(65),
                          BlackButton(notes: notes,nota: 3,),
                          Gap(10),
                          BlackButton(notes: notes,nota: 3,),
                    ],
                  ),
                ),
              //   Positioned(
              //     left: 100,
              //     child: Container(
              //       width: 50,
              //       height: 160,
              //       decoration: const BoxDecoration(
              //         color: Colors.black,
              //         borderRadius: BorderRadius.only(
              //           bottomLeft: Radius.circular(
              //             5,
              //           ),
              //           bottomRight: Radius.circular(
              //             5,
              //           ),
              //         ),
              //       ),
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.end,
              //         children: [Text(
              //           notes[1],
              //           style:const TextStyle(
              //             color: Colors.white,
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              //   ),
              //   Positioned(
              //     left: 212,
              //     child: Container(
              //       width: 50,
              //       height: 160,
              //       decoration: const BoxDecoration(
              //         color: Colors.black,
              //         borderRadius: BorderRadius.only(
              //           bottomLeft: Radius.circular(
              //             5,
              //           ),
              //           bottomRight: Radius.circular(
              //             5,
              //           ),
              //         ),
              //       ),
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.end,
              //         children: [Text(
              //           notes[2],
              //           style:const TextStyle(
              //             color: Colors.white,
              //           ),
              //         ),
              //         ],
              //     ),
              //   ),
              // ),
              //   Positioned(
              //     left: 273,
              //     child: Container(
              //       width: 50,
              //       height: 160,
              //       decoration: const BoxDecoration(
              //         color: Colors.black,
              //         borderRadius: BorderRadius.only(
              //           bottomLeft: Radius.circular(
              //             5,
              //           ),
              //           bottomRight: Radius.circular(
              //             5,
              //           ),
              //         ),
              //       ),
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.end,
              //         children: [Text(
              //           notes[3],
              //           style:const TextStyle(
              //             color: Colors.white,
              //           ),
              //         ),
              //         ],
              //     ),
              //   ),
              //   ),
              //   Positioned(
              //     left: 330,
              //     child: Container(
              //       width: 50,
              //       height: 160,
              //       decoration: const BoxDecoration(
              //         color: Colors.black,
              //         borderRadius: BorderRadius.only(
              //           bottomLeft: Radius.circular(
              //             5,
              //           ),
              //           bottomRight: Radius.circular(
              //             5,
              //           ),
              //         ),
              //       ),
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.end,
              //         children: [Text(
              //           notes[4],
              //           style:const TextStyle(
              //             color: Colors.white,
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              //  ),
              //   Positioned(
              //     right: 320,
              //     child: Container(
              //       width: 50,
              //       height: 160,
              //       decoration: const BoxDecoration(
              //         color: Colors.black,
              //         borderRadius: BorderRadius.only(
              //           bottomLeft: Radius.circular(
              //             5,
              //           ),
              //           bottomRight: Radius.circular(
              //             5,
              //           ),
              //         ),
              //       ),
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.end,
              //         children: [Text(
              //           notes[5],
              //           style:const TextStyle(
              //             color: Colors.white,
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              //  ),
              //   Positioned(
              //     right: 263,
              //     child: Container(
              //       width: 50,
              //       height: 160,
              //       decoration: const BoxDecoration(
              //         color: Colors.black,
              //         borderRadius: BorderRadius.only(
              //           bottomLeft: Radius.circular(
              //             5,
              //           ),
              //           bottomRight: Radius.circular(
              //             5,
              //           ),
              //         ),
              //       ),
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.end,
              //         children: [Text(
              //           notes[6],
              //           style:const TextStyle(
              //             color: Colors.white,
              //           ),
              //         ),
              //         ],
              //     ),
              //   ),
              //   ),
              //   Positioned(
              //     right: 142,
              //     child: Container(
              //       width: 50,
              //       height: 160,
              //       decoration: const BoxDecoration(
              //         color: Colors.black,
              //         borderRadius: BorderRadius.only(
              //           bottomLeft: Radius.circular(
              //             5,
              //           ),
              //           bottomRight: Radius.circular(
              //             5,
              //           ),
              //         ),
              //       ),
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.end,
              //         children: [Text(
              //           notes[7],
              //           style:const TextStyle(
              //             color: Colors.white,
              //           ),
              //         ),
              //       ],
              //     ),
              //    ),
              //  ),
              //   Positioned(
              //     right: 85,
              //     child: Container(
              //       width: 50,
              //       height: 160,
              //       decoration: const BoxDecoration(
              //         color: Colors.black,
              //         borderRadius: BorderRadius.only(
              //           bottomLeft: Radius.circular(
              //             5,
              //           ),
              //           bottomRight: Radius.circular(
              //             5,
              //           ),
              //         ),
              //       ),
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.end,
              //         children: [Text(
              //           notes[8],
              //           style:const TextStyle(
              //             color: Colors.white,
              //           ),
              //         ),
              //         ],
              //     ),
              //   ),
              //   ),
              //   Positioned(
              //     right: 27,
              //     child: Container(
              //       width: 50,
              //       height: 160,
              //       decoration: const BoxDecoration(
              //         color: Colors.black,
              //         borderRadius: BorderRadius.only(
              //           bottomLeft: Radius.circular(
              //             5,
              //           ),
              //           bottomRight: Radius.circular(
              //             5,
              //           ),
              //         ),
              //       ),
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.end,
              //         children: [Text(
              //           notes[9],
              //           style:const TextStyle(
              //             color: Colors.white,
              //           ),
              //         ),
              //         ],
              //     ),
              //   ),
              //   ),
              
              
              ],
            ),
          ),
        ],
      ),
    );
  }
  AppBar myAppBar() {
    return AppBar(
      centerTitle: true,
      title: const Text(
        "My piano App",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
    );
  }
}

class BlackButton extends StatelessWidget {
  const BlackButton({
    super.key,
    required this.notes, required this.nota, 
  });
   final int nota;
  final List<String> notes;

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
          children: [Text(
            notes[0],
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
