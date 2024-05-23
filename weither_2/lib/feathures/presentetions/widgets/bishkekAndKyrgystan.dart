import 'package:flutter/material.dart';

class BishkekAndKyrgystan extends StatelessWidget {
  const BishkekAndKyrgystan({
    super.key,
    required this.name,
  });
 final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
       Align(
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          Text(
            name,
            style: const TextStyle(
              fontSize: 33,
              fontWeight: FontWeight.w500,
              color: Color(
                0xff313341,
              ),
            ),
          ),
          const SizedBox(
            height: 10.35,
               ),
               ],
              ), 
             ),
              const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Tue, Jun 30',
              style: TextStyle(
                color: Color(0xff000000),
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
          )
      ],
    );
  }
}