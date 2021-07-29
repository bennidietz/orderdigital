import 'package:latlong2/latlong.dart';

import 'model/category.dart';
import 'model/journey.dart';
import 'model/place.dart';

const double defaultPadding = 20.0;

List<MyPlace> places = [
  MyPlace(LatLng(14.621,-61.004),"Strand A", "Ein wunderschöner Stand mit tollem Sand und einer klasse Aussicht auf den Berg.", MyCategory.beach),
  MyPlace(LatLng(14.60223686414459, -61.05680067315844),"Fort de France", "Toller Hafen", MyCategory.city),
];

List<MyJourney> journeys = [
  MyJourney(1, "Martinique 🌴", "Karibik", "assets/images/palm_tree.jpeg", "28.10.2021", LatLng(14.655971, -61.024770)),
];

List<MyJourney> dreams = [
  MyJourney(1, "Budapest", "Traumhafte Stadt", "assets/images/palm_tree.jpeg", null, LatLng(14.655971, -61.024770)),
];

MyPlace? getPlaceForLatLng(LatLng latLng) {
  for (MyPlace place in places) {
    if (place.latlng.latitude == latLng.latitude &&
        place.latlng.longitude == latLng.longitude) return place;
  }
  return null;
}