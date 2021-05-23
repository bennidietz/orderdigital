import 'package:flutter/material.dart';
import 'package:forsat/network/classes/opportunity/opportunity.dart';

class Headline extends StatelessWidget {
  const Headline(this.text, {Key key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold
      ),
    );
  }
}

class TextParagraph extends StatelessWidget {
  const TextParagraph({
    Key key,
    @required this.headline,
    @required this.content
  }) : super(key: key);

  final String headline;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Headline(headline),
        SizedBox(height: 10,),
        Text(content),
      ],
    );
  }
}

