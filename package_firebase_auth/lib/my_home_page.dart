import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  
  
  



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Animate(
          effects: const [FadeEffect(), SlideEffect()],
          child: const Text(
              "firebase_auth",
              style:  TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 36,
              ),
            ),
            delay: const Duration(seconds: 2),
        ),
        // delay: Duration(milliseconds: 10),
        
        ),
        
      );
    
  }
}
