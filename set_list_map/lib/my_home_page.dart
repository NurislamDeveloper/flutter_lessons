import 'package:flutter/material.dart';
import 'package:set_list_map/for_collections.dart';

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
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: const Text(
          "Set",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
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
                SizedBox(
                  width: 150,
                  height: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(users[1] ?? ""),
                      Text(
                        users[2] ?? "",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                SizedBox(
                  width: 150,
                  height: 150,
                  child: Column(
                    children: [
                      Image.network(users[3] ?? ""),
                      Text(
                        users[4]  ?? "",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                  height: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(users[5] ?? ""),
                      Text(
                        users[6] ?? "",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                SizedBox(
                  width: 150,
                  height: 150,
                  child: Column(
                    children: [
                      Image.network(users[7] ?? ""),
                      Text(
                        users[8] ?? "",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
