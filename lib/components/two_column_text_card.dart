import 'package:assignment_three/components/outline_button.dart';
import 'package:flutter/material.dart';

class TwoColumnTextCard extends StatelessWidget {
  final String heading;
  final String subHeading;
  final Color color;
  final String btnText;
  final Color textColor;
  final double? spacing;
  final double? radius;
  const TwoColumnTextCard(
      {super.key,
      required this.heading,
      required this.subHeading,
      required this.color,
      required this.btnText,
      required this.textColor,
      this.spacing,
      this.radius});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: spacing ?? 0),
      height: 120.0,
      width: 330.0,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(radius ?? 0))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                heading,
                style: TextStyle(color: textColor, fontSize: 20.0),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(subHeading,
                  style: TextStyle(color: textColor, fontSize: 15.0)),
            ],
          ),
          CustomOutlineButton(
            buttonText: btnText,
            customIcon: Icon(
              Icons.arrow_forward,
              color: textColor,
              size: 20.0,
            ),
          )
        ],
      ),
    );
  }
}
