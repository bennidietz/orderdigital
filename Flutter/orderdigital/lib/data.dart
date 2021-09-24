class Category {
  final String name;
  final String imageUrl;

  Category({
    required this.name,
    required this.imageUrl,
  });
}

final CATEGORIES_DRINKS = [
  Category(
    name: 'Alkoholfreie Getränke',
    imageUrl: 'assets/img/akoholfreie_getraenke.jpeg',
  ),
  Category(
    name: 'Biere',
    imageUrl: 'assets/img/bier.jpeg',
  ),
  Category(
    name: 'Cocktails',
    imageUrl: 'assets/img/cocktails.jpeg',
  ),
  Category(
    name: 'Wein und Prosecco',
    imageUrl: 'assets/img/wein.jpeg',
  ),
  Category(
    name: 'Heiße Getränke',
    imageUrl: 'assets/img/heisse_getraenke.jpeg',
  ),
];

final CATEGORIES_MEALS = [
  Category(
    name: 'Vorspeisen',
    imageUrl: 'assets/img/vorspeisen.jpeg',
  ),
  Category(
    name: 'Pizza',
    imageUrl: 'assets/img/pizza.jpeg',
  ),
  Category(
    name: 'Salate',
    imageUrl: 'assets/img/salate.jpeg',
  ),
  Category(
    name: 'Burger',
    imageUrl: 'assets/img/burger.jpeg',
  ),
  Category(
    name: 'Kindergerichte',
    imageUrl: 'assets/img/kindergerichte.jpeg',
  ),
];
