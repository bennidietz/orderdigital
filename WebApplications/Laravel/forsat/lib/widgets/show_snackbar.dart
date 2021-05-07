import 'package:flutter/material.dart';
import 'package:forsat/res/colors.dart';

showSnackbar(
    {@required GlobalKey<ScaffoldState> key,
      @required String message,
      Color color}) {
  ScaffoldMessenger.of(key.currentContext).showSnackBar(
    SnackBar(
      backgroundColor: color ?? MyColors.primaryColor,
      content: Text(message),
    ),
  );
}