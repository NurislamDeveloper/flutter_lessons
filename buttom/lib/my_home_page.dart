import 'package:buttom/seocnd_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 10, 39, 62),
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            TextFormField(
              onChanged: (text) {
                text = text;
              },
              decoration: const InputDecoration(
                  hintText: "Enter your name",
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(usersText: text),
                  ),
                );
              
              },
              child: const Text("Forward",style: TextStyle(color: Colors.white),),
            )
            // MaterialButton(
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => SecondPage(
            //           usersText: text,
            //         ),
            //       ),
            //     );
            //   },
            //   child:const  Text(
            //     "forward",
            //     style: TextStyle(
            //       color: Colors.white,
            //     ),
            //   ),
            // )
            // InkWell(
            //   onTap: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => SecondPage(
            //                   usersText: text,
            //                 ),
            //                 ),

            //                 );

            //   },
            //   child:const  Text("Forward"),
            // ),
          ],
        ),
      ),
    );
  }
}
