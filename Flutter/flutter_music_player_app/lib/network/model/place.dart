import 'package:cloud_firestore/cloud_firestore.dart';

import 'category.dart';

class MyPlace {
  final String? journey_id;
  final String? id;
  final double latitude;
  final double longitude;
  final String title;
  final String description;
  final MyCategory? category;

  MyPlace({
    this.journey_id,
    this.id,
    required this.latitude,
    required this.longitude,
    required this.title,
    required this.description,
    this.category
  });

  MyPlace.fromJson(Map<String, Object?> json)
      : this(
    journey_id: json['journey_id'] as String?,
    id: json['id'] as String?,
    latitude: json['latitude'] as double,
    longitude: json['longitude']! as double,
    title: json['title']! as String,
    description: json['description']! as String,
    category: json['category'] as MyCategory?,
  );

  Map<String, Object?> toJson() {
    return {
      'journey_id': journey_id,
      'latitude': latitude,
      'longitude': longitude,
      'title': title,
      'description': description,
      'category': category,
    };
  }

}

final placeRef = FirebaseFirestore.instance.collection('travel_places').withConverter<MyPlace>(
  fromFirestore: (snapshot, _) => MyPlace.fromJson(snapshot.data()!),
  toFirestore: (movie, _) => movie.toJson(),
);