import 'package:latlong2/latlong.dart';

class MyJourney {
  final int id;
  final String title;
  final String description;
  final String image_url;
  final String? date;
  final LatLng middlePoint;

  MyJourney(
    this.id, this.title, this.description,
    this.image_url, this.date, this.middlePoint
  );

}