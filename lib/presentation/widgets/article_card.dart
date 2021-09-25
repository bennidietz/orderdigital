import 'package:flutter/material.dart';
import 'package:orderdigital/data.dart';
import 'package:orderdigital/presentation/uielements/change_number_controller.dart';

class ArticleCard extends StatefulWidget {
  final Article article;

  const ArticleCard({Key? key, required this.article}) : super(key: key);

  @override
  State<ArticleCard> createState() => _ArticleCardState();
}

class _ArticleCardState extends State<ArticleCard> {
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
                  Text(
                    widget.article.priceString,
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 15.0),
            ChangeNumberController(number: 0, onChange: (newNumber) {}),
          ],
        ),
      ),
    );
  }
}
