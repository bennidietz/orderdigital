import 'package:cloud_firestore/cloud_firestore.dart';

class Link {
  final String? id;
  final String url;
  final String description;
  final DocumentReference? reference;

  Link({this.id, required this.url, required this.description, this.reference});

  Link.fromJson(Map<String, Object?> json)
      : this(
    url: json['url']! as String,
    description: json['description']! as String,
  );

  Map<String, Object?> toJson() {
    return {
      'url': url,
      'description': description,
    };
  }

}

final linkRef = FirebaseFirestore.instance.collection('travel_links').withConverter<Link>(
  fromFirestore: (snapshot, _) => Link.fromJson(snapshot.data()!),
  toFirestore: (movie, _) => movie.toJson(),
);

List<Link> LINKS = [
  Link(url: "http://www.bvb.de", description: "Geilster Fußballverein der Welt")
];