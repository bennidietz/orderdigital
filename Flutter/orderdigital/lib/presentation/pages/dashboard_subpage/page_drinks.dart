import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orderdigital/presentation/widgets/categories_gridview.dart';

import '../../../data.dart';

class PageDrinks extends StatelessWidget {
  const PageDrinks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CategoriesGridView(
      categories: CATEGORIES_DRINKS,
    );
  }
}
