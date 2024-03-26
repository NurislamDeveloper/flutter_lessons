import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage(
      {super.key,
      required this.useraccount,
      required this.userPassword,
      required this.userEmail,
      this.userMessage});
  final String useraccount;
  final String userPassword;
  final String userEmail;
  final userMessage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.white,
            size: 25,
          ),
        ),
        title: const Text(
          "Nurislam",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              useraccount,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              userPassword,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              userEmail,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              userMessage,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
