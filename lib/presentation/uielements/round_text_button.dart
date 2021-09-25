import 'package:flutter/material.dart';
import 'package:orderdigital/utils/constants.dart';

class RoundTextButton extends StatelessWidget {
  const RoundTextButton({
    Key? key,
    required this.text,
    this.size = 40.0,
    required this.onPressed,
    this.iconColor = kColorPrimary,
  }) : super(key: key);

  final String text;
  final double size;
  final Function() onPressed;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 30.0,
          color: Colors.white,
          fontWeight: FontWeight.w900,
        ),
      ),
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: iconColor,
      constraints: BoxConstraints.tightFor(width: size, height: size),
      elevation: 6.0,
    );
  }
}
