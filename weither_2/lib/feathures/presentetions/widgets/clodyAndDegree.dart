import 'package:flutter/material.dart';

class ClodyAndDegree extends StatelessWidget {
  const ClodyAndDegree({
    super.key, required this.text,
    required this.temp,
    required this.icon,
  });
  final String text;
  final String temp;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(icon,height: 200,),
         Column(
          children: [
             Text(
              textAlign: TextAlign.start,
              temp,
              style: const TextStyle(
                fontSize: 65,
                fontWeight: FontWeight.w700,
                color: Color(0xff303345),
              ),
            ),
            Text(
              text,
              style:const  TextStyle(
                fontSize: 17.15,
                fontWeight: FontWeight.w400,
                color: Color(0xff303345),
              ),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(bottom:105),
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
