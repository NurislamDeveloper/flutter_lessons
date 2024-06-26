import 'package:bm_calculate/features/presentation/constans/app_text_style.dart';
import 'package:flutter/material.dart';

class MaleFemlalwCard extends StatelessWidget {
  const MaleFemlalwCard({
    super.key,
    required this.name,
    required this.icon,
    required this.onTap,
    required this.color,
  });
  final String name;
  final IconData icon;
  final Color color;
  final  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 177,
      child: InkWell(
        onTap:onTap,
        child: Card(
          shadowColor: Colors.white,
          color: const Color(
            0xff0b0120,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon, // Use iconData here
                size: 40, // You can adjust the size of the icon as needed
                color:color// You can adjust the color of the icon as needed
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                name.toUpperCase(),
                style: AppTextStule.textStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
