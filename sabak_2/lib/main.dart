import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          "My Counter App",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color:const Color.fromARGB(255, 15, 160, 232),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 40,
                width: double.infinity,
                child:  Center(
                    child: Text(
                  "Numbers: $counter",
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                )),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          counter--;
                        },);
                      
                      },
                      child: const Icon(
                        Icons.remove_circle_outline_sharp,
                      ),
                      ),
                  const SizedBox(
                    width: 25,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          counter++;
                        },);
                        
                      },
                      child: const Icon(
                        Icons.add_circle_outline_sharp,
                      ),
                      ),
                  //lcIcon(Icons.remove_circle_outline,size:45,)],)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
