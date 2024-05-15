import 'package:flutter/material.dart';
import 'package:test_from_me/features/data/contans/style_of_cards.dart';

class Cards extends StatelessWidget {
  const Cards(this.texts, {super.key, required this.images});
  final String images;
  final String texts;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: SizedBox(
        width: 140,
        height: 100,
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Image.asset(
                      images,
                    ),
                  Text(
                  texts,
                  style: StyleOfCards.cardsOfStyle,
                  ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
