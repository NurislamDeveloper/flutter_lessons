import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:gap/gap.dart';
import 'package:piano_con/appbar.dart';
import 'package:piano_con/black_buttom.dart';

class PianaView extends StatelessWidget {
  const PianaView({super.key, });
  

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();   //it's package 
    List<String> notes = [  //it's the list for nameof Buttom we are using this list when we invoke the name
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

   final List <String> music = [  //it's the list of music we are using by invoke the name and  index
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
      appBar: myAppBar(),    // here we seperate with extract method 
      body: Column(
        children: [
          Expanded(child: Container()), //expended it's the widget 
          Expanded(
            flex: 2,
            child: Stack(   ///Overlaying Widgets: The primary purpose of the Stack widget is to overlay multiple widgets on top of each other. You can add children to the Stack and position them using the Positioned widget, which allows you to specify the alignment and positioning of each child within the stack
              children: [
                ListView.builder(  //it's Listview.builder it allow us to create multiple conteiner or anything we want 
                  itemCount: 14, //it's count of my Conteiner
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) { 
                    return InkWell(       
                      onTap: ()async {  //as I know it's work for  feth some data or information from api during the working async other part of screen also work they are  not stop or  blocking  and await  waiting  the data from async 
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
                              notes[index],  //in here I just invoke the index of list which I wrote top of the project 
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
                Positioned( ///Positioning Widgets: The Positioned widget is used to position children within the Stack. You can specify properties such as top, bottom, left, right, width, and height to precisely control the position and size of each child widget relative to the Stack.
                  left: 37,
                  child: Row(
                    children: [  //all black buttom which overlaying the grey buttom
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

