import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weither_2/feathures/presentetions/widgets/SearchAndMenue.dart';
import 'package:weither_2/feathures/presentetions/widgets/bishkekAndKyrgystan.dart';
import 'package:weither_2/feathures/presentetions/widgets/cards.dart';
import 'package:weither_2/feathures/presentetions/widgets/clodyAndDegree.dart';
import 'package:weither_2/feathures/presentetions/widgets/listOfText.dart';

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
        body: ListView(
          children:[
            Column(
            children: [
              Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff16C4EA),
                          Color(0xff7DEBFF),
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
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
                          Padding(
                            padding: const EdgeInsets.only(bottom:50),
                            child: Slider(
                              activeColor: Colors.purpleAccent,
                              thumbColor: Colors.white,
                              inactiveColor: Colors.black,
                              min: 0,
                              max: 200,
                              divisions: 200,
                              label: numberOFSlider.round().toString(),
                              value: numberOFSlider,
                              onChanged: (double value) {
                                setState(
                                  () {
                                    numberOFSlider = value;
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext, context) {
                      return Padding(
                        padding: const EdgeInsets.all(8.3),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(34),
                          child: Container(
                            height: 55.19,
                            width: 98.99,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                            ),
                            child: Column(
                              children: [
                                const Text(
                                  'now',
                                  style: TextStyle(
                                    fontSize: 12.07,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff303345),
                                  ),
                                ),
                                SvgPicture.asset('assets/svg_image/Union.svg'),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '19',
                                      style: TextStyle(
                                        color: Color(0xff303345),
                                        fontSize: 12.07,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text('\u2103',),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          ] 
        ),
      ),
    );
  }
}
