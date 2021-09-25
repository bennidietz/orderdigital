import 'package:flutter/material.dart';
import 'package:orderdigital/data.dart';
import 'package:orderdigital/presentation/uielements/change_number_controller.dart';
import 'package:orderdigital/utils/number_utils.dart';

class ArticlePriceCard extends StatefulWidget {
  final Article article;
  int number;

  ArticlePriceCard({
    Key? key,
    required this.article,
    required this.number,
  }) : super(key: key);

  @override
  State<ArticlePriceCard> createState() => _ArticlePriceCardState();
}

class _ArticlePriceCardState extends State<ArticlePriceCard> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      widget.article.name,
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  ChangeNumberController(
                      number: widget.number,
                      onChange: (newNumber) {
                        setState(() {
                          widget.number = newNumber;
                        });
                      }),
                ],
              ),
            ),
            SizedBox(width: 15.0),
            Text(
              doubleToEuroString(widget.article.price * widget.number),
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
