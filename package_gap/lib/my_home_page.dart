import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
        title: const Text(
          "Gap",
          style: TextStyle(
            color: Colors.white,
            fontSize: 36,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
              ),
           const Gap(10),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
              ),
            const   Gap(10),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
              ),
           const    Gap(10),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
              ),
               const    Gap(10),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
              ),
               const    Gap(10),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
              ),
        ],
      ),
    );
  }
}
