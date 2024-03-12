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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF056c5c),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Men",
          style: TextStyle(
            color: Color(0xFF056c5c),
            fontSize: 28,
            fontWeight: FontWeight.w100,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           const Center(
            child: Text(
              "Nurislam Temirbekov",
              style: TextStyle(
                color: Colors.white,
                fontSize: 42,
                fontWeight: FontWeight.w400,
                fontFamily: 'Pacifico-Regular' ),
            ),
          ),
          const Center(
            child: Text(
              'Flutter Developer',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
          Container(
             color: Colors.white,
             height: 1,
             width: 250,// here I can use double.infinity,
          ),
          const SizedBox(height: 10,),
          Center(
            child: Container(
              color: Colors.white,
              width: 500,
              height: 45,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.local_phone,
                      color: Color(0xFF056c5c),
                      size: 24,
                      ),
                      SizedBox(width: 5,),
                  Text(
                    "+ 996 500886026",
                    style: TextStyle(
                      color:Color(0xFF056c5c),
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              color: Colors.white,
              width: 500,
              height: 50,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.email_outlined,size: 25,color: Color(0xFF056c5c),),
                      SizedBox(width: 15,),
                  Text(
                    "NurislamTemirbekov@gmail.com",
                    style: TextStyle(
                      color:Color(0xFF056c5c),
                      fontSize: 22,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
