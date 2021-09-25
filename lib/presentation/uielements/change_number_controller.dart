import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:orderdigital/presentation/uielements/round_icon_button.dart';
import 'package:orderdigital/utils/constants.dart';

class ChangeNumberController extends StatefulWidget {
  ChangeNumberController(
      {Key? key, required this.number, required this.onChange})
      : super(key: key);

  int number;
  final Function(int) onChange;

  @override
  _ChangeNumberControllerState createState() => _ChangeNumberControllerState();
}

class _ChangeNumberControllerState extends State<ChangeNumberController> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RoundIconButton(
          icon: FontAwesomeIcons.minus,
          iconColor: widget.number == 0 ? Colors.black12 : kColorPrimary,
          onPressed: () {
            setState(() {
              if (widget.number > 0) {
                widget.number--;
                widget.onChange(widget.number);
              }
            });
          },
        ),
        SizedBox(
          width: 10.0,
        ),
        Text(
          widget.number.toString(),
          style: TextStyle(fontSize: 20.0),
        ),
        SizedBox(
          width: 10.0,
        ),
        RoundIconButton(
          icon: FontAwesomeIcons.plus,
          onPressed: () {
            setState(() {
              widget.number++;
              widget.onChange(widget.number);
            });
          },
        ),
      ],
    );
  }
}