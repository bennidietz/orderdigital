import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orderdigital/data.dart';
import 'package:orderdigital/presentation/responsive.dart';
import 'package:orderdigital/presentation/widgets/article_price_card.dart';

class PageOrder extends StatelessWidget {
  const PageOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isMobile = Responsive.isMobile(context);
    var children = [
      isMobile ? SectionOrderCard() : Expanded(child: SectionOrderCard()),
      SizedBox(height: 10.0, width: 10.0),
      isMobile ? SectionOrderCard() : Expanded(child: SectionOrderCard()),
    ];
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  isMobile
                      ? Column(
                          children: children,
                        )
                      : Row(
                          children: children,
                        ),
                  SizedBox(height: 15.0),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '22,30 €',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 20.0),
                  ElevatedButton(
                    // style: ButtonStyle(
                    //     backgroundColor: MaterialAccentColor(Colors.blueAccent)),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Bestellung abgeben',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SectionOrderCard extends StatelessWidget {
  const SectionOrderCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Text(
                'Drinks',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 5.0,
                ),
              ),
              SizedBox(height: 15.0),
              Column(
                  children: CATEGORIES_DRINKS[0]
                      .articles
                      .map((e) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ArticlePriceCard(
                              article: e,
                              number: 2,
                            ),
                          ))
                      .toList()),
            ],
          ),
        ));
  }
}
