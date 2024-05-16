import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchAndMenue extends StatelessWidget {
  const SearchAndMenue({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        left: 8,
        right: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset('assets/svg_image/icons.svg',height: 37,),
          SvgPicture.asset('assets/svg_image/Vector.svg',height: 25,),
        ],
      ),
    );
  }
}
