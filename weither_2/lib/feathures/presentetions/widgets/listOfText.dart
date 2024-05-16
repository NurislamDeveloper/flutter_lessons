import 'package:flutter/material.dart';

class ListOfText extends StatelessWidget {
  const ListOfText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const  Padding(
        padding: EdgeInsets.only(left: 15,top: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Today',
              style: TextStyle(
                fontSize: 13.8,
                fontWeight: FontWeight.w700,
                color: Color(0xff313341),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'Tomorrow',
              style: TextStyle(
                fontSize: 13.8,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000),
              ),
            ),
            SizedBox(
              width: 120,
            ),
            Text(
              'Next 7 days',
              style: TextStyle(
                fontSize: 13.8,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Color(0xff9A938C),
              size: 16,
            ),
          ],
        ),
      );
  }
}
