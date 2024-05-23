import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllPicure extends StatelessWidget {
  const AllPicure({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/acute.svg',height: 50,),
        const SizedBox(width: 150,),
        Column(
          children: [
            SvgPicture.asset('assets/heart.svg',height: 60, ),
            SvgPicture.asset('assets/key_off.svg',height: 60,),
          ],
        ),
      ],
    );
  }
}