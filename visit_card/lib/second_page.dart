import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage( { super.key,  required this.userName, this.userWork, required this.userEmail });
  final  String userName ;
  final userWork;
  final  String userEmail;
 
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.userName),
            const  SizedBox(height: 20,),
            Text(widget.userWork),
            const  SizedBox(height: 20,),
            Text(widget.userEmail),
          ],
        )
        ),
    );
  }
}