import 'package:flutter/material.dart';

class CustomOutlineButton extends StatelessWidget {
  final String buttonText;
  final Widget customIcon;
  final Color? btnText;
  const CustomOutlineButton(
      {super.key,
      required this.buttonText,
      required this.customIcon,
      this.btnText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: const BorderRadius.all(Radius.circular(8.0))),
      height: 40.0,
      width: 130.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            buttonText,
            style: TextStyle(color: btnText ?? Colors.white, fontSize: 15.0),
          ),
          const SizedBox(
            width: 3.0,
          ),
          customIcon
        ],
      ),
    );
  }
}
