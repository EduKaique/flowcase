class LoginResponse {
  final int id;
  final String username;
  final String firstName;
  final String lastName;
  final String email;
  final String image;
  final String accessToken;

  LoginResponse({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.image,
    required this.accessToken,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      id: json['id'] as int,
      username: json['username'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      image: json['image'] as String,
      accessToken: json['accessToken'] as String,
    );
  }
}
