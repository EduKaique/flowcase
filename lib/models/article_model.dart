import 'dart:convert';

class Article {
  final String id;
  final String title;
  final String description;
  final String publisher;
  final DateTime publishedAt;
  final bool isFavorite;
  final String imageUrl;
  final String originalLink;

  Article({
    required this.id,
    required this.title,
    required this.description,
    required this.publisher,
    required this.publishedAt,
    required this.isFavorite,
    required this.imageUrl,
    required this.originalLink,
  });

  factory Article.fromJson(dynamic map) {
    Map<String, dynamic> decodedJson;

    try {
      decodedJson = jsonDecode(map);
    } catch (e) {
      decodedJson = map;
    }

    return Article(
      id: decodedJson['id'],
      title: decodedJson['title'],
      description: decodedJson['description'],
      publisher: decodedJson['publisher'],
      publishedAt: decodedJson['published_at'],
      isFavorite: decodedJson['is_favorite'],
      imageUrl: decodedJson['image_url'],
      originalLink: decodedJson['original_link']
    );
  }
}
