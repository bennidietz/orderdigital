enum MyCategory {
  beach, city, sights, unknown
}

class MyCategoryValues {
  final String icon;
  final String name;

  MyCategoryValues(this.icon, this.name);
}

MyCategoryValues? getCategoryValues(MyCategory? place) {
  switch(place) {
    case  MyCategory.beach:
      return MyCategoryValues("🏝", "Strand");
    case MyCategory.city:
      return MyCategoryValues("🌇", "Stadt");
    case MyCategory.unknown:
      return MyCategoryValues("X", "Unbekannt");
    default:
      return MyCategoryValues("X", "Unbekannt");
  }
}