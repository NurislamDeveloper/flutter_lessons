import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage(
      {super.key,
      required this.userName,
      this.userWork,
      required this.userEmail});
  final String userName;
  final userWork; // here I delate the string  and required I added ?
  final String userEmail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            userName,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            userWork,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            userEmail,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                Colors.blue,
              ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "sign out",
                style: TextStyle(
                  color: Colors.white,
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
