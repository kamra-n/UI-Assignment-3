import 'package:flutter/material.dart';

class RoundImageTextCard extends StatelessWidget {
  final String imagePath;
  final String cardText;
  const RoundImageTextCard(
      {super.key, required this.imagePath, required this.cardText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 38, // Image radius
          backgroundImage: AssetImage(imagePath),
        ),
        const SizedBox(
          height: 7.0,
        ),
        Text(cardText)
      ],
    );
  }
}
