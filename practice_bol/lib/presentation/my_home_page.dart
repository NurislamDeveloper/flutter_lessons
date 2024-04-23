import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:practice_bol/data/models/test_model.dart';
import 'package:practice_bol/presentation/eihth_pages.dart';
// import 'package:practice_bol/presentation/fifth_pages.dart';
// import 'package:practice_bol/presentation/first_pages.dart';
// import 'package:practice_bol/presentation/fourth_pages.dart';
// import 'package:practice_bol/presentation/night_pages.dart';
// import 'package:practice_bol/presentation/second_pages.dart';
// import 'package:practice_bol/presentation/seventh_pages.dart';
// import 'package:practice_bol/presentation/sixth_pages.dart';
// import 'package:practice_bol/presentation/tenth_pages.dart';
// import 'package:practice_bol/presentation/third_pages.dart';
// import 'package:practice_bol/presentation/first_pages.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
// void nextPages() {
//   if(whole[0] == stundent_1){
//      Navigator.push(context, MaterialPageRoute(builder: (context) =>const FirstPages()));
//   }else if(whole[1] == stundent_2){
//      Navigator.push(context, MaterialPageRoute(builder: (context) =>const SecondPage()));
//   }else if(whole[2] == stundent_3) {
//      Navigator.push(context, MaterialPageRoute(builder: (context) =>const ThirdPages()));
//   }else if (whole[3] == stundent_4) {
//      Navigator.push(context, MaterialPageRoute(builder: (context) =>const FourthPages()));
//   }else if (whole[4] == stundent_5) {
//      Navigator.push(context, MaterialPageRoute(builder: (context) =>const FifthPages()));
//   }else if (whole[5] == stundent_6) {
//     Navigator.push(context, MaterialPageRoute(builder: (context) =>const SixthPages()));
//   }else if (whole[6] == stundent_7) {
//     Navigator.push(context, MaterialPageRoute(builder: (context) =>const SevemthPages()));
//   }else if (whole[7] == stundent_8) {
//     Navigator.push(context, MaterialPageRoute(builder: (context) =>const EihthPages()));
//   }else if (whole[8] == stundent_9) {
//     Navigator.push(context, MaterialPageRoute(builder: (context) =>const NightPages()));
//   }else if (whole[9] == stundent_10) {
//     Navigator.push(context, MaterialPageRoute(builder: (context) =>const TenthPages()));
//   }

// }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "L I S T  O F  S T U D E N T S",
        ),
      ),
      body: GridView.builder(
        itemCount: whole.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EihthPages(
                  allName: whole[index],
                  allSurname: whole[index],
                  allAge: whole[index],
                  allCity: whole[index],
                  allMajor: whole[index],
                  allPhoto: whole[index],
                ),
              ),
            );
            // nextPages();
          },
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(whole[index].name),
                SizedBox(
                  height: 80,
                  width: 100,
                  child: Image.asset(
                    whole[index].photoOfStundent,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
