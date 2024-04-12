import 'package:flutter/material.dart';

class PianaKeys extends StatelessWidget {
  const PianaKeys({
    super.key, required this.nameOfKeys, required this.colorsOfConteiner, required this.onTap, required this.colorOfText,
  });
  final Color colorsOfConteiner;
  final String nameOfKeys ;
  final Color colorOfText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.blue,
        ),
        child:  Center(
          child:  Text(
            nameOfKeys,
            style: TextStyle(
              color: colorsOfConteiner,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
