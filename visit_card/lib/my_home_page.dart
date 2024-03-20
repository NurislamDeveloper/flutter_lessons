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
              onChanged: (num) {
                name = num;
              },
              decoration: const InputDecoration(
                hintText: "Enter your name",
                hintStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(
                  12,
                ))),
                prefixIcon: Icon(
                  Icons.account_circle_outlined,
                  color: Colors.white,
                  size: 24,
                ),
              ),
            ),
            TextFormField(
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
              onChanged: (myim) {
                email = myim;
              },
              decoration: const InputDecoration(
                hintText: "Enter your email",
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(
                  12,
                ))),
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: Colors.white,
                  size: 24,
                ),
              ),
            ),
          const   SizedBox(height: 50,),
            ElevatedButton(
              style: const ButtonStyle(backgroundColor:  MaterialStatePropertyAll(Colors.blue,)),
              onPressed: () {
            if(name.isEmpty&& major.isEmpty && email.isEmpty){
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content:Text("you have to fill !")
              )
              );
            }else{
              Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(
              userName: name,
              userWork: major,
              userEmail: email,
              )));
            }
            },
            
             child: const Text(
              "sign in",
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
