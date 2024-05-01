import 'package:bm_calculate/features/presentation/widgets/buttom_bar.dart';
import 'package:bm_calculate/features/presentation/widgets/height_card.dart';
import 'package:bm_calculate/features/presentation/widgets/male_female_card.dart';
import 'package:bm_calculate/features/presentation/widgets/weith_and_height_card.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body:  Padding(
        padding:const  EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaleFemlalwCard(
                 icon: Icons.male,
                  name: "male",
                ),
                MaleFemlalwCard(
                 icon: Icons.female,
                  name: "female",
                ),
              ],
            ),
            const HeightCard(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WeigthAndHeightCard(nameOfFirst: "weight",nameOfSecond: 60, onChanged: () {}, onChangeded: () {  },),
                WeigthAndHeightCard(nameOfFirst: "age",nameOfSecond: 28, onChanged: () {  }, onChangeded: () {  },)],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const buttomBar(),
    );
  }
  AppBar myAppBar() {
    return AppBar(
      centerTitle: true,
      title: const Text(
        "BMI CALCULATOR",
        style: TextStyle(
          color: Color(
            0xffFFFFFF,
          ),
          fontSize: 22,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
