import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage()
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
  
  void all () {
    setState(() {
     iSTrue =!iSTrue;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$iSTrue"),
          // Text(iSTrue == false ? 'false' :"true",style: TextStyle(color:iSTrue ? Colors.red:Colors.blue,),),

         ElevatedButton(onPressed: () {
          all();
        //   setState(() {
        //    iSTrue =! iSTrue;
        //  });},
         },
          child: const Text("click"))
        ],
      ),
    );
  }
}