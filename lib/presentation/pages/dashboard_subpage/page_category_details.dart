import 'package:flutter/material.dart';
import 'package:orderdigital/data.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.asset(
                  category.imageUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Text('Dies ist die Seite für ${category.name}'),
          ],
        ),
      ),
    );
  }
}
