
import 'package:flutter/material.dart';
import 'package:practice_with_bool/models.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    int sun = 0;
  void next () {
    setState(() {
      sun++;
    });
    if(sun == whole.length) {
     sun = 0;
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "P R A C T I C E  W I T H  B O O L",
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(
            10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                 whole[sun].question,
                   textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Buttoms(
                one: 'true',
                color: Colors.orangeAccent,
                onTap:() {
                  next();
                  // print("somethin");
                }
              ),
              const SizedBox(
                height: 30,
              ),
              Buttoms(
                one: 'false',
                color: Colors.red,
                onTap: () => next
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class Buttoms extends StatelessWidget {
 const  Buttoms({
    super.key,
    required this.one,
    required this.color,
    required this.onTap,
  });
  final String one;
  final Color color;
  final void Function ()? onTap;
  // final wit =  Size(width, height)  MediaQuery.of(context).size.width - 20;
  // final height = MediaQuery.of(context).size.height * 0.07;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        minimumSize: Size(
          MediaQuery.of(context).size.width - 20,
          MediaQuery.of(context).size.height * 0.07,
        ),
      ),
      onPressed: onTap,
      child: Text(
        one,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
