import 'package:flutter/material.dart';
import 'package:main_project/account.dart';
import 'package:main_project/account_real.dart';
import 'package:main_project/home.dart';
import 'package:main_project/interesting.dart';
import 'package:main_project/location.dart';
import 'package:main_project/qr_code.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

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
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 230, 230, 230),
        ), //her I change solor of drawer from black to white,
        backgroundColor: Colors.purple,
        shadowColor: const Color.fromARGB(255, 247, 247, 247),
        centerTitle: true,
        title: const Text(
          "Kulikov",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.normal,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(14),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AccountPage()));

              },
              child: const Icon(
                Icons.notifications_none_outlined,
                color: Colors.white,
                size: 23,
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.purple,
        child: ListView(
          children: [
            const DrawerHeader(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 234, 219, 89)),
              child: Text(
                "nurislam",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                ),
              ),
            ),
            ListTile(
              title: const Text(
                "",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                "",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Image.network(
                  "data:image/jpeg;base64,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")
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        //I need to add here another method for bottomnavigatorbar ,I wrote code with swith case but it's not good
        type: BottomNavigationBarType
            .fixed, //in here before I added this I can't add more icons after this one I can
        backgroundColor: Colors.purple,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.white,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.campaign_outlined,
                color: Colors.white,
              ),
              label: "Interesting"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.qr_code_outlined,
                color: Colors.white,
              ),
              label: "QR_Code"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
                color: Colors.white,
              ),
              label: "Account"),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on_outlined,
              color: Colors.white,
              size: 16,
            ),
            label: "Location",
          ),
        ],
        selectedItemColor: Colors.white,
        selectedFontSize: 13,
        unselectedItemColor: Colors.white,
        unselectedFontSize: 13,
        iconSize:
            18, // in here I change all size of icons it's more faster and comfortable.
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.push(context,
                  MaterialPageRoute(builder: (contex) => const MyHome()));
              break;
            case 1:
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyInteresting()));
              break;
            case 2:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const QrCode()));
              break;
            case 3:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyAccount()));
              break;
            case 4:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyLacation()));
          }
        },
      ),
    );
  }
}
