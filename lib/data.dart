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
    articles: [
      Article(name: 'Bergmann', price: 1.2),
      Article(name: 'Krombacher', price: 2.3),
      Article(name: 'Union', price: 2.3),
      Article(name: 'Dortmunder Kronen', price: 2.3),
      Article(name: 'Pinkus Müller', price: 2.3),
      Article(name: 'Alkoholfreies Pils', price: 2.3),
      Article(name: 'Radler', price: 2.3),
    ],
  ),
  Category(
    name: 'Cocktails',
    imageUrl: 'assets/img/cocktails.jpeg',
    articles: [
      Article(name: 'Pina Colada', price: 1.2),
      Article(name: 'Gin Tonic', price: 2.3),
      Article(name: 'Virgin Mojito', price: 2.3),
      Article(name: 'Mojito', price: 2.3),
    ],
  ),
  Category(
    name: 'Wein und Prosecco',
    imageUrl: 'assets/img/wein.jpeg',
    articles: [
      Article(name: 'Prosecco', price: 1.2),
      Article(name: 'Weißwein', price: 2.3),
      Article(name: 'Rotwein', price: 2.3),
      Article(name: 'Cidre', price: 2.3),
    ],
  ),
  Category(
    name: 'Heiße Getränke',
    imageUrl: 'assets/img/heisse_getraenke.jpeg',
    articles: [
      Article(name: 'Kaffe', price: 1.2),
      Article(name: 'Ingwer-Tee', price: 2.3),
      Article(name: 'Minze-Tee', price: 2.3),
      Article(name: 'Heiße Schokolade', price: 2.3),
    ],
  ),
];

final CATEGORIES_MEALS = [
  Category(
    name: 'Vorspeisen',
    imageUrl: 'assets/img/vorspeisen.jpeg',
    articles: [
      Article(name: 'Brucetta', price: 1.2),
      Article(name: 'Salat', price: 2.3),
      Article(name: 'Mixed Starters', price: 2.3),
    ],
  ),
  Category(
    name: 'Pizza',
    imageUrl: 'assets/img/pizza.jpeg',
    articles: [
      Article(name: 'Margita', price: 1.2),
      Article(name: 'Mista', price: 2.3),
      Article(name: 'Schinken', price: 2.3),
      Article(name: 'Fungi', price: 2.3),
      Article(name: 'Salmone', price: 2.3),
    ],
  ),
  Category(
    name: 'Salate',
    imageUrl: 'assets/img/salate.jpeg',
    articles: [
      Article(name: 'Mixed Salate', price: 1.2),
      Article(name: 'Veganer Salat', price: 2.3),
    ],
  ),
  Category(
    name: 'Burger',
    imageUrl: 'assets/img/burger.jpeg',
    articles: [
      Article(name: 'Hamburger', price: 1.2),
      Article(name: 'Cheeseburger', price: 2.3),
      Article(name: 'Nacho Burger', price: 2.3),
      Article(name: 'Bacon Burger', price: 2.3),
      Article(name: 'Veggie Burger', price: 2.3),
    ],
  ),
  Category(
    name: 'Kindergerichte',
    imageUrl: 'assets/img/kindergerichte.jpeg',
    articles: [
      Article(name: 'Pommes', price: 1.2),
      Article(name: 'Burger', price: 2.3),
      Article(name: 'Fischstäbchen', price: 2.3),
    ],
  ),
];
