import 'package:flutter/material.dart';
import 'package:rich/second_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const Text(
             "I' am Rich",
             style: TextStyle(
             color: Colors.white,
             fontSize: 48,
             fontWeight: FontWeight.w200,
             fontFamily: "fon"
               ),
              ),
            Image.asset("assets/image/almaz.jpeg"),
            ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondPage() ));
            }, 
            child: const Text("go to the first page",style: TextStyle(color: Colors.blue,fontSize: 18),),
            )
          ],
      ),
      ),
    );
  }
}
