import 'package:burger_page/presenteions/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyBoddy extends StatelessWidget {
  const MyBoddy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
       
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/burger.png'),
          ],
        ),
                 ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MyHomePage(),
              ),
            );
          },
          child: Text(
            "Enter",
            style: GoogleFonts.almendraSc(
              textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 27,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
