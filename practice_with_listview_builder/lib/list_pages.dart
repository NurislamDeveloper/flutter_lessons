import 'package:flutter/material.dart';

class ListPages extends StatelessWidget {
  const ListPages({
    super.key, 
    // required this.images, required this.colorsOfConteiner,
   }
  );
  // final String images;
  // final String colorsOfConteiner;
  

  @override
  Widget build(BuildContext context) {
    List <String> images = [
     "assets/food10.jpg",
     "assets/food10.jpg",
     "assets/food10.jpg",
     "assets/food10.jpg",
     "assets/food10.jpg",
     "assets/food10.jpg",
     "assets/food10.jpg",
    ];
    List <Color> colorsOfConteiner = [
    Colors.blue,
    Colors.green.shade500,
    Colors.purpleAccent,
    Colors.tealAccent,
    Colors.orangeAccent,
    Colors.indigo,
    Colors.cyan,
    ];
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [   
           Expanded(
             child: ListView.builder(
             shrinkWrap:true,
             scrollDirection: Axis.horizontal,       
             itemCount: 7,
             itemBuilder:  (context, index) {
              return   Container(
              decoration: BoxDecoration(
                borderRadius:const  BorderRadius.all(Radius.circular(30)),
                 color: colorsOfConteiner[index],
                 image: DecorationImage(image: AssetImage(images[index]),)
                 ),
                );
              },
             ),
           ),
        ],
      );
  }
}
