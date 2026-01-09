import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flowcase/models/article_model.dart';

class ArticleService {
  Future<Article> getArticle() async {
    final response =
      await rootBundle.loadString('assets/data/article-mock.json');
    final decoded = jsonDecode(response);
    return Article.fromJson(decoded);
  }


}
