import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weither_2/feathures/data/wether_data.dart';
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
  @override
  void initState() {
    super.initState();
    weatherData = WeatherData();
  }

  double numberOFSlider = 20;
  WeatherData? weatherData;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder(
            future: weatherData?.fetchDataFromDio(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.hasError.toString()),
                );
              } else if (snapshot.hasData) {
                double temp = snapshot.data!.temp - 273.15;
                return Column(
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
                        BishkekAndKyrgystan(name: snapshot.data!.name,),
                         ClodyAndDegree(text: snapshot.data!.main,temp: temp.toStringAsFixed(1),),
                        const Cards(),
                        const ListOfText(),
                        Slider(
                          activeColor:const  Color.fromARGB(255, 255, 255, 255),
                          thumbColor: Colors.orangeAccent,
                          inactiveColor:const  Color.fromARGB(255, 202, 201, 201),
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
                    decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff16C4EA),
                        Color(0xff7DEBFF),
                      ],
                    ),
                  ),
              child: SizedBox(
                height: 103,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext, context) {
                    return Padding(
                      padding: const EdgeInsets.all(14),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(34),
                        child: Container(
                          height: 75,
                          width: 70,
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
         );
              }else {
                return const Center(child: CircularProgressIndicator(),);
              }
            },
           ),

      ),
    );
  }
}
