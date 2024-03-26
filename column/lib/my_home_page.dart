import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: const TextSpan(
            style: TextStyle(
              color: Colors.white,
            ),
            children: <TextSpan>[
              TextSpan(
                text: "Column ",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: " and",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
              TextSpan(
                text: " Row",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 28,
                ),
              ),
            ],
          ),
        ),
      ),
      body: const Column(    
        crossAxisAlignment: CrossAxisAlignment.center,  // Column widget arranges its children in a vertical array, from top to bottom. Each child of a Column can have its own alignment within the vertical space.
        children: <Widget> [
          Text('Widget 1'),
          Text('Widget 2'),   //Both Column and Row widgets provide properties for controlling the alignment of their children.

                             //MainAxisAlignment (for Row) and CrossAxisAlignment (for Column):
                            //MainAxisAlignment determines how the children are positioned along the main axis (horizontal for Row, vertical for Column).
                           //CrossAxisAlignment determines how the children are positioned perpendicular to the main axis.
          Text('Widget 3'),
          Row(         
             mainAxisAlignment: MainAxisAlignment.center,    //A Row widget arranges its children in a horizontal array, from left to right. Each child of a Row can have its own alignment within the horizontal space.
            children: <Widget> [
              Text('Widget 1'),
              Text('Widget 2'),
              Text('Widget 3'),
            ],
          )
        ], 
         //Column and Row layouts are fundamental for building Flutter UIs, enabling you to arrange widgets vertically and horizontally. By understanding their properties and how to use them effectively, I can create complex and responsive user interfaces.
      ),
    );
  }
}
