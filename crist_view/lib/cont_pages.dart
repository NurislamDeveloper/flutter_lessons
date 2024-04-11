import 'package:flutter/material.dart';

class ContPages extends StatelessWidget {
  const ContPages({
    super.key, required this.colors,
  });
  final Color colors ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 150,
      decoration: const BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(
          Radius.circular(
            20,
          ),
        ),
      ),
    );
  }
}
