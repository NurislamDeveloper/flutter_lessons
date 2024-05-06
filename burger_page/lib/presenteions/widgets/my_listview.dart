import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
   MyListView({
    super.key, 
    required this.pages,
    required this.nameOfMenue,
  });

  final List<Widget> pages;
  final List<String> nameOfMenue;
  final List <String>images = [
    'assets/hamburgers.png',
    'assets/shaurma.png',
    'assets/doner.png',
    'assets/pancake.png',
    'assets/pizza.png',
    'assets/sandwitch.png',
    ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: ListView.builder(
        itemCount:pages.length,
        scrollDirection: Axis.horizontal,
        // ignore: avoid_types_as_parameter_names
        itemBuilder: (BuildContext context  ,int index) {
         return  InkWell(
          onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => pages[index]));},
           child: Card(
            color:Colors.white,
            child:Row(
              children: [
             Image.asset(images[index],// Accessing image dynamically using index
             width: 100,
             height: 100,
              ),
                   Text(nameOfMenue[index]),
              ],
            ),
           ),
         );
       },
      ),
    );
  }
}
