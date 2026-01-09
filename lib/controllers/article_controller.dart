import 'package:flowcase/models/article_model.dart';
import 'package:flowcase/services/article_service.dart';
import 'package:flutter/widgets.dart';

class ArticleController {
  final article = ValueNotifier<Article?>(null);

  Future<void> fetchController() async {
    final service = ArticleService();
    final fetchedArticle = await service.getArticle();
    article.value = fetchedArticle;
  }
}
