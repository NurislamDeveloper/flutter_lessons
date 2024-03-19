import 'package:flutter/material.dart';
import 'package:practice_with_card/first_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String phoneNumber = "";
  String email = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Nurislam",
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.orangeAccent,
                radius: 150,
                backgroundImage:
                    AssetImage("assets/image/boy_with _laptop.jpg"),
              ),
              const Text(
                "Peaksoft House",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Pacifico-Regular"),
              ),
              const Divider(
                color: Colors.white,
                indent: 40,
                endIndent: 30,
                height: 10,
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                onChanged: (number) {
                  phoneNumber = number;
                },
                decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.black,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(),
                    hintText: "Your number"),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                onChanged: (emails) {
                  email = emails;
                },
                decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    filled: true,
                    border: OutlineInputBorder(),
                    hintText: "Your email "),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blueGrey)),
                  onPressed: () {
                    if (phoneNumber.isEmpty && email.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content:
                              Text("your have to write your number in here")));
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FirstPage(
                                    usernumber: phoneNumber,
                                    userphone: email,
                                  )));
                    }
                  },
                  child: const Text(
                    "send",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                
               ),
            ],
          ),
        ),
      ),
    );
  }
}
