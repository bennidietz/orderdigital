import 'package:flutter/material.dart';
import 'package:orderdigital/utils/constants.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    Key? key,
    required this.icon,
    this.size = 40.0,
    required this.onPressed,
    this.iconColor = kColorPrimary,
  }) : super(key: key);

  final IconData icon;
  final double size;
  final Function() onPressed;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon, color: Colors.white),
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: iconColor,
      constraints: BoxConstraints.tightFor(width: size, height: size),
      elevation: 6.0,
    );
  }
}
