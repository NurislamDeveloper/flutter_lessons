import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Cards extends StatelessWidget {
  const Cards({
    super.key,
    required this.speed,
    required this.humidity,
  });
final double speed;
final int humidity;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 70.54,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 24.43, right: 48.29),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset('assets/svg_image/umbrella.svg'),
                  ),
                  const SizedBox(
                    width: 5.63,
                  ),
                  const Text('RainFall'),
                  const SizedBox(width: 125),
                   Text(speed.toString()),
                ],
              ),
            ),
          ),
        ),
                const SizedBox(height: 7,),
        SizedBox(
          width: double.infinity,
          height: 70.54,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 11, right: 42.29),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset('assets/svg_image/windy.svg',height: 52
                    ,),
                  ),
                  const SizedBox(
                    width: 4.63,
                  ),
                  const Text('Windy'),
                  const SizedBox(width: 125),
                   Text(humidity.toString()),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 7,),
        SizedBox(
          width: double.infinity,
          height: 70.54,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 48.29),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset('assets/svg_image/rectangle.svg'),
                  ),
                  const SizedBox(
                    width: 5.63,
                  ),
                  const Text('Humidity'),
                  const SizedBox(width: 125),
                  const Text('69 %'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
