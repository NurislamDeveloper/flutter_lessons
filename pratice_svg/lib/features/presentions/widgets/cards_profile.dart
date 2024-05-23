import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pratice_svg/features/presentions/constans/style_of_app.dart';
import 'package:pratice_svg/features/presentions/constans/text.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: double.infinity,
      child: Card(
        child: Row(
          children: [
            SvgPicture.asset('assets/profile.svg',height: 40,),
            const SizedBox(width: 25,),
            const Text(
              AllText.profileText,
              style: App.bodyText,
            )
          ],
        ),
      ),
    );
  }
}
