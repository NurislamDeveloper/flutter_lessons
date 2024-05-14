
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Cards extends StatelessWidget {
  const Cards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 70.54,
          child: Card(
            color: const Color(0xfffffffff),
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
                 const  Text('RainFall'),
                  const SizedBox(width: 125),
                  const Text('3 cm'),
                ],
              ),
            ),
          ),
        ),
        
        SizedBox(
          width: double.infinity,
          height: 70.54,
          child: Card(
            color: const Color(0xfffffffff),
            child: Padding(
              padding: const EdgeInsets.only(left: 11.43,right: 42.29),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child:
                        SvgPicture.asset('assets/svg_image/windy.svg'),
                  ),
                  const SizedBox(width: 4.63,),
                   const Text('Windy'),
                  const SizedBox(width: 125),
                   const Text('160 km/h'),
                ],
              ),
            ),
          ),
        ),
        
        SizedBox(
          width: double.infinity,
          height: 70.54,
          child: Card(
            color: const Color(0xfffffffff),
            child: Padding(
              padding: const EdgeInsets.only(left: 24.43,right: 48.29),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child:
                        SvgPicture.asset('assets/svg_image/rectangle.svg'),
                  ),
                  const SizedBox(width: 5.63,),
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
