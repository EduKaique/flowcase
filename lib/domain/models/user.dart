import 'dart:convert';

class User {
  final int id;
  final String fullName;
  final String email;
  final String imageUrl;

  const User({
    required this.id,
    required this.fullName,
    required this.email,
    required this.imageUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'fullName': fullName,
      'email': email,
      'imageUrl': imageUrl,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] as int,
      fullName: map['fullName'] as String,
      email: map['email'] as String,
      imageUrl: map['imageUrl'] as String,
    );
  }

  String toJson() => json.encode(toMap());
  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
