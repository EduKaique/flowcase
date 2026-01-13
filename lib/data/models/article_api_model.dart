class ArticleApiModel {
  final int id;
  final String title;
  final String description;
  final String publisher;
  final DateTime publishedAt;
  final bool isFavorite;
  final String imageUrl;
  final String originalLink;

  const ArticleApiModel({
    required this.id,
    required this.title,
    required this.description,
    required this.publisher,
    required this.publishedAt,
    required this.isFavorite,
    required this.imageUrl,
    required this.originalLink,
  });

  factory ArticleApiModel.fromJson(Map<String, dynamic> json) {
    return ArticleApiModel(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      publisher: json['publisher'] as String,
      publishedAt: DateTime.parse(json['published_at'] as String),
      isFavorite: json['is_favorite'] as bool,
      imageUrl: json['image_url'] as String,
      originalLink: json['original_link'] as String,
    );
  }
}
