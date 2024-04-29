import 'package:bm_calculate/features/presentation/constans/app_text_style.dart';
import 'package:flutter/material.dart';

class buttomBar extends StatelessWidget {
  const buttomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Colors.red,
      child:const  Center(
        child: Text(
          "Calculate",
          style:  AppTextStule.heightStyle      
    
        ),
      ),
    );
  }
}
