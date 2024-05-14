import 'package:flutter/material.dart';
import 'package:weather_1/feathures/presentetions/widgets/SearchAndMenue.dart';
import 'package:weather_1/feathures/presentetions/widgets/bishkekAndKyrgystan.dart';
import 'package:weather_1/feathures/presentetions/widgets/cards.dart';
import 'package:weather_1/feathures/presentetions/widgets/clodyAndDegree.dart';
import 'package:weather_1/feathures/presentetions/widgets/listOfText.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  double numberOFSlider = 20;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:const  EdgeInsets.only(
            left: 15,
            right: 15,
          ),
          child: Column(
            children: [
              const SearchAndMenue(),
              const BishkekAndKyrgystan(),
              const SizedBox(
                height: 8.62,
              ),
              const ClodyAndDegree(),
              const Cards(),
              const SizedBox(
                height: 10,
              ),
              const ListOfText(),
              Slider(
                activeColor: Colors.purpleAccent,
                thumbColor: Colors.white,
                inactiveColor: Colors.black,
                min: 0,
                max: 200,
                divisions: 200,
                label: numberOFSlider.round().toString(),
                value: numberOFSlider,
                onChanged: (double value) {
                  setState(() {
                    numberOFSlider = value;
                   },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
