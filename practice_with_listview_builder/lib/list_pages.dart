import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
    return Scaffold(
      backgroundColor:const  Color.fromARGB(255, 4, 33, 56),
      body:Padding(
        padding: const EdgeInsets.only(top: 50, ),
        child: SizedBox(
          width: 250,
          height: 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [   
               Expanded(
                 child: ListView.builder(
                 shrinkWrap: false,
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
          ),
        ),
      ),
    );
  }
}
