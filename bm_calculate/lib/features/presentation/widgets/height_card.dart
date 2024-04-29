import 'package:bm_calculate/features/presentation/constans/app_text_style.dart';
import 'package:flutter/material.dart';

class HeightCard extends StatelessWidget {
  const HeightCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335,
      height: 176,
      child: Card(
            shadowColor: Colors.white,

          color:const  Color(0xff0b0120,),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Height",
              style:   AppTextStule.textStyle,
            ),
             const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            textBaseline: TextBaseline.alphabetic,
            crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                 Text(
                  "180",
                  style: AppTextStule.numStyle,
                ),
               Text(
              "cm",
             style:   AppTextStule.textStyle,
            ),
              ],
            

             ),
            Slider(
              thumbColor: Colors.green,
              activeColor: Colors.blue,
              inactiveColor: Colors.orange,
              min: 0,
              max: 150,
              value: 100, onChanged: (value) {})
          ],
        ),
      ),
    );
  }
}

