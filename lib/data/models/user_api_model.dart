class UserApiModel {
  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final String image;
  final String role;

  UserApiModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.image,
    required this.role,
  });

  factory UserApiModel.fromJson(Map<String, dynamic> json) {
    return UserApiModel(
      id: json['id'] as int,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      image: json['image'] as String,
      role: json['role'] as String,
    );
  }
}
