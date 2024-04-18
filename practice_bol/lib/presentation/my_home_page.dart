import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:practice_bol/data/models/test_model.dart';
// import 'package:practice_bol/presentation/first_pages.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  // void pages() {
  //   switch (whole) {
  //     case stundent_1:
  //     Navigator.push(context, MaterialPageRoute(builder: (context) =>FirstPages(),),);
  //   }
    
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "L I S T  O F  S T U D E N T S",
        ),
      ),
      body: GridView.builder(
        
        itemCount: whole.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) => Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(whole[index].name),
              SizedBox(
                height: 80,
                width: 100,
                child: Image.asset(
                  whole[index].photoOfStundent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
