import 'package:forsat/network/classes/common/category.dart';

class CategoryFormField {
  final Category category;

  CategoryFormField(this.category);

  validate() {

  }

  bool isValid() {
    return category != null;
  }
}