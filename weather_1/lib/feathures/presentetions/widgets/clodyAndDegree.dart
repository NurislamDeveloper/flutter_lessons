import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ClodyAndDegree extends StatelessWidget {
  const ClodyAndDegree({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('assets/svg_image/cludy.svg'),
        const Padding(
          padding: EdgeInsets.only(bottom: 30),
          child: Column(
            children: [
              Text(
                textAlign: TextAlign.start,
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
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 105),
          child: Text(
            " \u2103",
            style: TextStyle(
              fontSize: 21.7,
              fontWeight: FontWeight.w300,
              color: Color(
                0xff303345,
              ),
            ),
          ),
        )
      ],
    );
  }
}
