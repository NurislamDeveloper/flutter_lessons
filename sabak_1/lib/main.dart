// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 65,
                width: 140,
                     decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 176, 7),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),
                    spreadRadius:3,
                    blurRadius: 5,
                    offset: const Offset(0,2),
                    ),
                    ]
                    ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.add_a_photo_outlined,
                      color: Color.fromARGB(255, 255, 255, 255),
                      size: 28,),
                         SizedBox(height: 5,),
                 Text(
                  "Bord",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    ),
                  ),],
                    ),
               ),
                      const SizedBox(
                width: 20,
              ),
              Container(
                   height: 65,
                width: 140,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 213, 17, 17),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),
                    spreadRadius:3,
                    blurRadius: 5,
                    offset: const Offset(0,2),
                    ),
                  ],
              ),
                child:const  Center(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.approval_outlined,
                          color: Colors.white,
                          size: 28,
                          shadows: [BoxShadow(color: Color.fromARGB(255, 40, 40, 40))],
                        ),
                    //alignment: Alignment.topCenter,
                     Text(
                  "Possition",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                     )
                      ]
                  ),
                ), //here I need to add here fontsize and other thing here with,
               ),
          ],),
         const SizedBox(height: 20,),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 65,
                width: 140,
                     decoration: BoxDecoration(
                    color: const Color.fromARGB(153, 26, 193, 179),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),
                    spreadRadius:3,
                    blurRadius: 5,
                    offset: const Offset(0,2),
                    ),
                    ]
                    ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.attach_email_outlined,
                      color: Color.fromARGB(255, 255, 255, 255),
                      size: 28,),
                     SizedBox(height: 5,),
                 Text(
                  "Netmail",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    ),
                  ),],
                    ),
               ),
                      const SizedBox(
                width: 20,
              ),
              Container(
                   height: 65,
                width: 140,
                decoration: BoxDecoration(
                    color:const Color.fromARGB(220, 39, 71, 216),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),
                    spreadRadius:3,
                    blurRadius: 5,
                    offset: const Offset(0,2),
                    ),
                  ],
              ),
                child:const  Center(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.auto_stories_outlined,
                          color: Colors.white,
                          size: 28,
                          shadows: [BoxShadow(color: Color.fromARGB(255, 40, 40, 40))],
                        ),
                    //alignment: Alignment.topCenter,
                     Text(
                  "Book",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                     )
                      ]
                  ),
                ), //here I need to add here fontsize and other thing here with,
               ),
          ],),
        const   SizedBox(height: 20,),
          // I,con(Icons.person,color: Colors.white,),
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 65,
                width: 140,
                     decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),
                    spreadRadius:3,
                    blurRadius: 5,
                    offset: const Offset(0,2),
                    ),
                    ]
                    ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color: Color.fromARGB(255, 255, 255, 255),
                      size: 28,),
                         SizedBox(height: 5,),
                 Text(
                  " Abode",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    ),
                  ),],
                    ),
               ),
                      const SizedBox(
                width: 20,
              ),
              Container(
                   height: 65,
                width: 140,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 124, 33, 243),
                    borderRadius: BorderRadius.circular(10),
                                        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),
                    spreadRadius:3,
                    blurRadius: 5,
                    offset: const Offset(0,2),
                    ),
                  ],
              ),
                child:const  Center(
                  child: Row(
                    
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.settings,
                          color: Colors.white,
                          size: 28,
                          shadows: [BoxShadow(color: Color.fromARGB(255, 40, 40, 40))],
                        ),
                    //alignment: Alignment.topCenter,
                     Text(
                  "Scope",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                     )
                      ]
                  ),
                ), //here I need to add here fontsize and other thing here with,
               ),
          ],),
           const SizedBox(
            height: 20,
          ),
          Row(
                        mainAxisAlignment: MainAxisAlignment.center,

            children: [
   Container(
                height: 65,
                width: 140,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 209, 5, 220),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),
                    spreadRadius:3,
                    blurRadius: 5,
                    offset: const Offset(0,2),
                    ),
                    ],
                ),
                child: const Center(
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.access_alarm_outlined,
                        color: Colors.white,
                        shadows: [BoxShadow(blurStyle: BlurStyle.normal)], 
                        ),
                  
                     Text(
                  "Time",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                    ]  
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 65,
                width: 140,
                decoration: BoxDecoration(
                    color:const  Color.fromARGB(138, 47, 0, 255),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),
                    spreadRadius:3,
                    blurRadius: 5,
                    offset: const Offset(0,2),
                    ),
                    ]
              ),
                child: const Center(
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_business_outlined,
                        color: Colors.white,
                        shadows: [BoxShadow(color: Colors.black,),
                        ],
                        ),
                       Text(
                  "Mart",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                    )
                    ],
                ),
                ),
              ),
          ],),
           const SizedBox (height: 20,),
          Row(
          mainAxisAlignment: MainAxisAlignment.center,

            children: [
Container(
                height: 65,
                width: 140,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 11, 251, 235),
                    borderRadius: BorderRadius.circular(10),
                                        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),
                    spreadRadius:3,
                    blurRadius: 5,
                    offset: const Offset(0,2),
                    ),
                   ]
                ),
                
                child: const Center(
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.add_card_outlined,
                        color: Colors.white,
                        shadows: [BoxShadow(color:Colors.white ),
                        ],
                        ),
                     Text(
                  "Card",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                    ]
                  ),
                )
              ),
              const SizedBox(
                width: 20,
              ),
                Container(
                height: 65,
                width: 140,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 15, 227, 50),
                    borderRadius: BorderRadius.circular(10),
                    ),
                child: const Center(
                  child:Row(  
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [Icon(Icons.map_outlined,color: Colors.white,shadows: [BoxShadow(color:Colors.black),],),
                                       Text( "Map",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),  ],
                ), 
                ),
              ),
          ],),
            ],
          ),
    );
  }
}
