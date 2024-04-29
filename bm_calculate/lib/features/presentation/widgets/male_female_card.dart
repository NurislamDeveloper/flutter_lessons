import 'package:bm_calculate/features/presentation/constans/app_text_style.dart';
import 'package:flutter/material.dart';

class MaleFemlalwCard extends StatelessWidget {
  const MaleFemlalwCard({
    super.key, required this.name, 
  });
  final String name;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 177,
      child: Card(
        shadowColor: Colors.white,
        color:const  Color(0xff0b0120,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //   Icon(
            //   iconData as IconData, // Use iconData here
            //   size: 40, // You can adjust the size of the icon as needed
            //   color: Colors.white, // You can adjust the color of the icon as needed
            // ),

                          
            Text(
              name.toUpperCase(),
              style:  AppTextStule.textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
