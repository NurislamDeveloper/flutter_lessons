import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  bool iSTrue = false;

//  var output = (selection == 2) ? 'Apple' : 'Banana';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red,),
      body: Column(
        children: [
        Text(iSTrue == false? 
          'False': 'TRUE',
            style: const TextStyle(
              color: Colors.black,
            ),
          )
          ,
          const SizedBox(
            height: 100,
          ),
          ElevatedButton(
            onPressed: () {
          setState(() {
            iSTrue =!iSTrue;
              },
             );
            },
            child: const Text(
              "click",
            ),
          ),
        ],
      ),
    );
  }
}
