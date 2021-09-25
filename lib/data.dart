import 'package:orderdigital/utils/number_utils.dart';

class Category {
  final String name;
  final String imageUrl;
  final List<Article> articles;

  Category({
    required this.name,
    required this.imageUrl,
    required this.articles,
  });
}

class Article {
  final String name;
  final String? imageUrl;
  final String? details;
  final double price;

  Article({
    required this.name,
    this.imageUrl,
    this.details,
    required this.price,
  });

  String get priceString => doubleToEuroString(price);
}

final CATEGORIES_DRINKS = [
  Category(
    name: 'Alkoholfreie Getränke',
    imageUrl: 'assets/img/akoholfreie_getraenke.jpeg',
    articles: [
      Article(name: 'Wasser', price: 1.2),
      Article(name: 'Sprite', price: 2.3),
      Article(name: 'Cola', price: 2.3),
      Article(name: 'Apfelsaft', price: 2.3),
      Article(name: 'Fanta', price: 2.3),
      Article(name: 'Holunderschorle', price: 2.1),
      Article(name: 'Orangensaft', price: 2.2),
    ],
  ),
  Category(
    name: 'Biere',
    imageUrl: 'assets/img/bier.jpeg',
    articles: [],
  ),
  Category(
    name: 'Cocktails',
    imageUrl: 'assets/img/cocktails.jpeg',
    articles: [],
  ),
  Category(
    name: 'Wein und Prosecco',
    imageUrl: 'assets/img/wein.jpeg',
    articles: [],
  ),
  Category(
    name: 'Heiße Getränke',
    imageUrl: 'assets/img/heisse_getraenke.jpeg',
    articles: [],
  ),
];

final CATEGORIES_MEALS = [
  Category(
    name: 'Vorspeisen',
    imageUrl: 'assets/img/vorspeisen.jpeg',
    articles: [],
  ),
  Category(
    name: 'Pizza',
    imageUrl: 'assets/img/pizza.jpeg',
    articles: [],
  ),
  Category(
    name: 'Salate',
    imageUrl: 'assets/img/salate.jpeg',
    articles: [],
  ),
  Category(
    name: 'Burger',
    imageUrl: 'assets/img/burger.jpeg',
    articles: [],
  ),
  Category(
    name: 'Kindergerichte',
    imageUrl: 'assets/img/kindergerichte.jpeg',
    articles: [],
  ),
];
