import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_1/feathures/presentetions/pages/bishkekandkyrgystan.dart';
import 'package:weather_1/feathures/presentetions/widgets/SearchAndMenue.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SearchAndMenue(),
            const BishkekAndKyrgystan(),
            const SizedBox(
              height: 8.62,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Row(
                children: [
                  SvgPicture.asset('assets/svg_image/cludy.svg'),
                  const Column(
                    children: [
                      Text(
                        "19",
                        style: TextStyle(
                          fontSize: 74.17,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff303345),
                        ),
                      ),
                      Text(
                        "Rainy",
                        style: TextStyle(
                          fontSize: 24.15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff303345),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
