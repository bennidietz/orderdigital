import 'package:latlong2/latlong.dart';

import 'model/category.dart';
import 'model/journey.dart';
import 'model/place.dart';

const double defaultPadding = 20.0;

List<MyPlace> places = [
  MyPlace(latitude: 14.621,longitude: -61.004, title: "Strand A", description: "Ein wunderschöner Stand mit tollem Sand und einer klasse Aussicht auf den Berg.", category_id: "beach"),
  MyPlace(latitude: 14.60223686414459, longitude: -61.05680067315844,title: "Fort de France",description:  "Toller Hafen", category_id: "city"),
];

List<MyJourney> journeys = [
  MyJourney(id: "1",title: "Martinique 🌴",description: "Karibik",image_url: "assets/images/palm_tree.jpeg",date: "28.10.2021",latitude: 14.655971,longitude: -61.024770),
];

List<MyJourney> dreams = [
  MyJourney(id: "1", title: "Budapest",description: "Traumhafte Stadt",image_url: "assets/images/palm_tree.jpeg",latitude: 14.655971, longitude: -61.024770),
];

MyPlace? getPlaceForLatLng(LatLng latLng) {
  for (MyPlace place in places) {
    if (place.latitude == latLng.latitude &&
        place.longitude == latLng.longitude) return place;
  }
  return null;
}