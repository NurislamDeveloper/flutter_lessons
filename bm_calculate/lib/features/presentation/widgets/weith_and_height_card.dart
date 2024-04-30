import 'package:bm_calculate/features/presentation/constans/app_text_style.dart';
import 'package:flutter/material.dart';

class WeigthAndHeightCard extends StatefulWidget {
  const WeigthAndHeightCard({
    super.key,
    required this.nameOfFirst,
    required this.nameOfSecond,
  });
  final String nameOfFirst;
  final int nameOfSecond;
  
  @override
  State<WeigthAndHeightCard> createState() => _WeigthAndHeightCardState();
}

class _WeigthAndHeightCardState extends State<WeigthAndHeightCard> {
  int firs = 0;
  void increment() {
    setState(() {
      firs++;
    });
  }

  void decrement() {
    setState(() {
      firs++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 177,
      child: Card(
        shadowColor: Colors.white,
        color: const Color(
          0xff0b0120,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              widget.nameOfFirst.toUpperCase(),
              style: AppTextStule.textStyle,
            ),
            Text(
              "${widget.nameOfSecond}",
              style: AppTextStule.numStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    decrement();
                  },
                  child:const  Icon(
                    Icons.remove,
                    color: Color(0xff5C5B5B),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    increment();
                  },
                  child:const  Icon(
                    Icons.add,
                    color: Color(0xff5C5B5B),
                  ),
                ),
                // Icon(
                //   Icons.remove_circle,
                //   color: Color(
                //     0xff5C5B5B,
                //   ),
                // ),
                // Icon(
                //   Icons.add_circle,
                //   color: Color(
                //     0xff5C5B5B,
                //   ),
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
