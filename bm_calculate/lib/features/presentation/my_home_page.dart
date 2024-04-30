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
      body: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            HeightCard(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WeigthAndHeightCard(nameOfFirst: "weight",nameOfSecond: 60,),
                WeigthAndHeightCard(nameOfFirst: "age",nameOfSecond: 28,)],
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
