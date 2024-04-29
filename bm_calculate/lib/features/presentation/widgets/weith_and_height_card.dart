import 'package:bm_calculate/features/presentation/constans/app_text_style.dart';
import 'package:flutter/material.dart';

class WeigthAndHeightCard extends StatelessWidget {
  const WeigthAndHeightCard({
    super.key, required this.nameOfFirst, required this.nameOfSecond,
  });
  final String nameOfFirst;
  final int nameOfSecond;

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
              nameOfFirst.toUpperCase(),
              style: AppTextStule.textStyle,
            ),
             Text(
              "$nameOfSecond",
              style: AppTextStule.numStyle,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.remove_circle,
                  color: Color(
                    0xff5C5B5B,
                  ),
                ),
                Icon(
                  Icons.add_circle,
                  color: Color(
                    0xff5C5B5B,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
