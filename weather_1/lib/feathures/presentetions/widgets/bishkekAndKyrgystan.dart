import 'package:flutter/material.dart';

class BishkekAndKyrgystan extends StatelessWidget {
  const BishkekAndKyrgystan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 28.84,
        ),
       Align(
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          Text(
            'Bishkeke,\nKyrgystan',
            style: TextStyle(
              fontSize: 34.5,
              fontWeight: FontWeight.w500,
              color: Color(
                0xff313341,
              ),
            ),
          ),
          SizedBox(
            height: 10.35,
               ),
               ],
              ), 
             ),
              Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Tue, Jun 30',
              style: TextStyle(
                color: Color(0xff000000),
                fontSize: 15.52,
                fontWeight: FontWeight.w400,
              ),
            ),
          )
      ],
    );
  }
}