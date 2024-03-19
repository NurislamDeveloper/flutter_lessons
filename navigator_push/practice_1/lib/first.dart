import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(
          double.infinity,
          50,
        ),
        child: AppBar(
          backgroundColor: Colors.blue,
          shadowColor: Colors.black,
          elevation: 5,
          centerTitle: true,
          title: const Text(
            "  practice_1",
            style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w200,
                fontFamily: "DancingScript-Bold"),
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(child:const Text("show alert dialog"), 
        onPressed: () {
          showDialog(context: context, builder: (context) => AlertDialog(
           actions: [
            TextButton(onPressed: () {Navigator.of(context).pop();
            },
             child: const Text("close"))
           ],
           contentPadding: const EdgeInsets.all(25), 
          content: const Text("this is the AlertDiolog"),// Dialog Content: When creating a dialog in Flutter, you define the content of the dialog using the content property. This can include widgets such as text, buttons, or even other widgets like lists or forms
          title: const Text("Flutter Mapp"), 
          ),
          );
        },
        ),
      ),
    );
  }
}
