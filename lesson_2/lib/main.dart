import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "My new Flutter app",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.normal),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        //in here I used for line to change the color and I created a widget
        child: 
            IconButton(
              icon:const Center(child: Icon(Icons.home,color: Colors.white,size: 28.0,),),
              onPressed: () {
                print("Home Button Pressed");
              },
              
            ),
            
        ),
      ),
    );
  }
}
