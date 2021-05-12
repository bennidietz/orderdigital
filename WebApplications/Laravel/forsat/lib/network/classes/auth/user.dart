class User {
  final int id;
  final String firstName;
  final String lastName;
  final String bio;
  final String email;
  final String profilePicture;
  final String joinedOn;

  User.fromJson(Map<String, dynamic> jsonMap):
      id = jsonMap['id'] ?? 0,
      firstName = jsonMap['first_name'] ?? "",
      lastName = jsonMap['last_name'] ?? "",
      bio = jsonMap['bio'] ?? "",
      email = jsonMap['email'] ?? "",
      profilePicture = jsonMap['profile_picture'] ?? "",
      joinedOn = jsonMap['joinedOn'] ?? "";
}