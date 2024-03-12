import 'package:flutter/material.dart';
import 'package:home_work/first_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int numbers = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text(
          "HomeWork",
          style: TextStyle(
            color: Colors.white,
            fontSize: 38,
            fontWeight: FontWeight.w200,
            fontFamily: "DancingScript-Bold.ttf",
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Center(
            child: Text(
              "Numbers: $numbers",
              style: const TextStyle(
                color: Colors.green,
                fontSize: 25,
                fontWeight: FontWeight.normal,
                // fontFamily: "MadimiOne-Regular.ttf",
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    numbers--;
                  });
                },
                child: const Icon(
                  Icons.remove_circle_outline_sharp,
                  color: Colors.green,
                  size: 25,
                ),
              ),
              const SizedBox(width: 20,),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    numbers++;
                  });
                },
                child: const Icon(
                  Icons.add_circle_outline_outlined,
                  color: Colors.green,
                  size: 25,
                ),
              )
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  SecondPage(counter: numbers,)),
          );
        },
        child: const Icon(
          Icons.forward,
          size: 25,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    );
  }
}
