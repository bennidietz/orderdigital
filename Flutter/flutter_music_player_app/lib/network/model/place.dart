import 'package:latlong2/latlong.dart';

import 'category.dart';

class MyPlace {
  final LatLng latlng;
  final String title;
  final String description;
  final MyCategory category;

  MyPlace(this.latlng, this.title, this.description, this.category);

}