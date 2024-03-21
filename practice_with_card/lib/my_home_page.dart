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
      backgroundColor: const Color.fromARGB(
        255,
        12,
        38,
        58,
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: const Text(
          "Visit Card",
          style: TextStyle(
            color: Colors.white,
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
                radius: 120,
                backgroundImage: AssetImage(
                  "assets/image/boy_with _laptop.jpg",
                ),
              ),
              const Text(
                "Temirbekov Nurislam",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Yellowtail-Regular",
                ),
              ),
              const Text(
                "Flutter Developer",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.w400,
                  fontFamily: "LuxuriousRoman-Regular",
                ),
              ),
              const Divider(
                color: Colors.white,
                indent: 20,
                endIndent: 20,
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
                    color: Color.fromARGB(
                      255,
                      12,
                      38,
                      58,
                    ),
                    size: 27,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                  hintText: " Enter your number",
                  suffixStyle: TextStyle(
                    color: Color.fromARGB(
                      255,
                      12,
                      38,
                      58,
                    ),
                  ),
                ),
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
                    color: Color.fromARGB(
                      255,
                      12,
                      38,
                      58,
                    ),
                    size: 27,
                  ),
                  fillColor: Color.fromARGB(
                    255,
                    255,
                    255,
                    255,
                  ),
                  filled: true,
                  border: OutlineInputBorder(),
                  hintText: "Enter your email ",
                  suffixStyle: TextStyle(
                    color: Color.fromARGB(
                      255,
                      12,
                      38,
                      58,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.white,
                  ),
                ),
                onPressed: () {
                  if (phoneNumber.isEmpty || email.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        backgroundColor: Colors.white,
                        content: Center(
                          child: Text(
                            "Please fill it out ",
                            style: TextStyle(
                              color: Color.fromARGB(
                                255,
                                12,
                                38,
                                58,
                              ),
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        duration: Duration(
                          milliseconds: 500,
                        ),
                      ),
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FirstPage(
                          usernumber: phoneNumber,
                          userphone: email,
                        ),
                      ),
                    );
                  }
                },
                child: const Text(
                  "send",
                  style: TextStyle(
                    color: Color.fromARGB(
                      255,
                      12,
                      38,
                      58,
                    ),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
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
