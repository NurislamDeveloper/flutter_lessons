import 'package:flutter/material.dart';
import 'package:drawer/first_project.dart';

class AccountPaage extends StatefulWidget {
  const AccountPaage({super.key});

  @override
  State<AccountPaage> createState() => _AccountPaageState();
}

class _AccountPaageState extends State<AccountPaage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        //here I changed size of appbar
        preferredSize: const Size(double.infinity, 60),
        child: AppBar(
          automaticallyImplyLeading: false, //here I delated arrow defoult
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomePage()),
                    (route) =>
                        false, //in here I move from account to first page I use Navigator pop in here but it doesn't work Like how I want
                  );
                },
                icon: const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 350, 200),
                  child: Icon(
                    Icons.arrow_back_outlined,
                    color: Colors.white,
                    size: 28,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
