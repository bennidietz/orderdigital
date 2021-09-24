import 'package:flutter/material.dart';
import 'package:orderdigital/data.dart';
import 'package:orderdigital/presentation/responsive.dart';
import 'package:orderdigital/presentation/router/router_constants.dart';
import 'package:orderdigital/presentation/widgets/category_card.dart';

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView({
    Key? key,
    required this.categories,
  }) : super(key: key);

  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        shrinkWrap: true,
        primary: false,
        childAspectRatio: (16 / 11),
        padding: const EdgeInsets.all(30.0),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: Responsive.isMobile(context)
            ? 1
            : Responsive.isTablet(context)
                ? 2
                : 3,
        children: categories
            .map((e) => CategoryCard(
                  imageUrl: e.imageUrl,
                  title: e.name,
                  onTab: () => Navigator.pushNamed(
                    context,
                    kRouteCategoryDetails,
                    arguments: e,
                  ),
                ))
            .toList());
  }
}
