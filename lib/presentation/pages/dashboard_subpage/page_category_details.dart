import 'package:flutter/material.dart';
import 'package:orderdigital/data.dart';
import 'package:orderdigital/presentation/widgets/article_card.dart';

import '../../responsive.dart';

class PageCategoryDetails extends StatelessWidget {
  PageCategoryDetails({Key? key}) : super(key: key);

  late Category category;

  @override
  Widget build(BuildContext context) {
    try {
      category = ModalRoute.of(context)!.settings.arguments as Category;
    } on Exception {
      Navigator.pop(context);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(category.name),
      ),
      body: Center(
        child: GridView.count(
            shrinkWrap: true,
            primary: false,
            childAspectRatio: (4 / 1),
            padding: const EdgeInsets.all(40.0),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: Responsive.isMobile(context)
                ? 1
                : Responsive.isTablet(context)
                    ? 2
                    : 3,
            children:
                category.articles.map((e) => ArticleCard(article: e)).toList()),
      ),
    );
  }
}
