import 'package:flutter/material.dart';
import 'package:visit_card/second_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name = "";
  String major = "";
  String email = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Visit Card ",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 36,
            fontWeight: FontWeight.w400,
            fontFamily: "MadimiOne-Regular",
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
              onChanged: (num) {
                name = num;
              },
              decoration: const InputDecoration(
                hintText: "Enter your name",
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(
                  12,
                ),
                ),
                ),
                prefixIcon: Icon(
                  Icons.account_circle_outlined,
                  color: Colors.white,
                  size: 24,
                ),
              ),
            ),
            TextFormField(
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
              onChanged: (work) {
                major = work;
              },
              decoration: const InputDecoration(
                hintText: "Enter your major",
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(
                  12,
                ))),
                prefixIcon: Icon(
                  Icons.work,
                  color: Colors.white,
                  size: 24,
                ),
              ),
            ),
            TextFormField(
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
              onChanged: (myim) {
                email = myim;
              },
              decoration: const InputDecoration(
                hintText: "Enter your email",
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      12,
                    ),
                  ),
                ),
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: Colors.white,
                  size: 24,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                Colors.blue,
              )),
              onPressed: () {
                if (name.isEmpty || email.isEmpty) {
                  // ||this any  here I wrote code if any of them is empty show the scankBar
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      backgroundColor: Color.fromARGB(255, 10, 33, 51),
                      content: Center(
                        child: Text(
                          "you have to fill !",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(
                        userName: name,
                        userWork: major, // ?
                        userEmail: email,
                      ),
                    ),
                  );
                }
              },
              child: const Text(
                "sign in",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
