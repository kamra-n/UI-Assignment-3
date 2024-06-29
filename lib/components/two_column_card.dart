import 'package:flutter/material.dart';

class TwoColumnCard extends StatelessWidget {
  final Color color;
  final String image;
  final String heading;
  final String pera;
  final double height;

  const TwoColumnCard(
      {super.key,
      required this.color,
      required this.image,
      required this.heading,
      required this.pera,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15.0),
      height: height,
      width: 330.0,
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(15.0))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            image,
            height: 100.0,
            width: 100.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                heading,
                style: const TextStyle(color: Colors.black, fontSize: 20.0),
              ),
              Text(pera,
                  style: const TextStyle(color: Colors.black, fontSize: 13.0)),
            ],
          ),
        ],
      ),
    );
  }
}
