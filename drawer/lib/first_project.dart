import 'package:flutter/material.dart';
import 'package:drawer/account_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 43, 86, 213),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AccountPaage()));
                },
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 220,
                      100), // here I moved icon from centere to the left side.
                  child: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.white,
                    size: 56,
                  ),
                ),
              ),
            ),
            ListTile(
              title: const Text(
                "home",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
             
            ),
            ListTile(
              title: const Text(
                "business",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                "school",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          //here I change color of drawer from black to the white,
          color: Colors.white,
          size: 26,
        ),
        backgroundColor: const Color.fromARGB(
          255,
          5,
          113,
          255,
        ),
        centerTitle: true,
        title: const Text(
          "My Project",
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
    );
  }
}
