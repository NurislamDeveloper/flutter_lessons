import 'package:bm_calculate/features/presentation/constans/app_text_style.dart';
import 'package:flutter/material.dart';

class HeightCard extends StatefulWidget {
  const HeightCard({
    super.key,
  });

  @override
  State<HeightCard> createState() => _HeightCardState();
}

class _HeightCardState extends State<HeightCard> {
          double currentSliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
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
              Row(
            mainAxisAlignment: MainAxisAlignment.center,
            textBaseline: TextBaseline.alphabetic,
            crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                 Text(
                  "$currentSliderValue",
                  style: AppTextStule.numStyle,
                ),
               const Text(
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
              max: 200,
              divisions: 200,
              value: currentSliderValue,
              label: currentSliderValue.round().toString(),
               onChanged: (double value) {
                setState(() {
                  currentSliderValue = value;
                });
             },
            )
          ],
        ),
      ),
    );
  }
}


