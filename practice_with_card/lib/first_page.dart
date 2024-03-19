import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key, required this.usernumber, required this.userphone});
final String usernumber;
final String userphone;

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        ),
        body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.usernumber),
              Text(widget.userphone),
              ElevatedButton(
                style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blueGrey,)),
                onPressed: () {
                Navigator.pop(context);
              }, child:const  Text("back",style: TextStyle(color: Colors.white,fontSize: 18),))
            ],
          ),
        )
    );
  }
}