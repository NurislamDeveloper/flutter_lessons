import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key, required this.counter});

  final counter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        centerTitle: true, 
        title: const Text(
          "HomeWork",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 38,
            fontWeight: FontWeight.w200,
            fontFamily: "DancingScript-Bold.ttf",
          ),
        ),
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Numbers:",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Text(
                  counter.toString(),
                  style: const TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 30.0), // Add padding to the left
        child: Align(
          alignment: Alignment
              .bottomLeft, // Align the button to the bottom left corner
          child: FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.white,
              size: 25,
            ),
          ),
        ),
      ),
    );
  }
}
