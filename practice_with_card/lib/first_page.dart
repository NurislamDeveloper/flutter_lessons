import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage(
      {super.key, required this.usernumber, required this.userphone});
  final String usernumber;
  final String userphone;

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
        automaticallyImplyLeading: false,
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              usernumber,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              userphone,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(
              height: 400,
            ),
            ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "back",
                style: TextStyle(
                  color: Color.fromARGB(
                    255,
                    12,
                    38,
                    58,
                  ),
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
