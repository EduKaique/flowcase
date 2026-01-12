import 'dart:convert';
import 'package:flowcase/utils/result.dart';
// import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';
import 'package:flowcase/models/article_api_model.dart';

class ApiClient {
  final String _baseUrl = 'assets/data';

  Future<Result<List<ArticleApiModel>>> getArticles() async {
    try {
      await Future.delayed(const Duration(milliseconds: 500));

      final response = await rootBundle.loadString('$_baseUrl/article-mock.json');
      final decoded = jsonDecode(response) as Map<String, dynamic>;
      final list = decoded['articles'] as List;

      final articles = list
          .map((json) => ArticleApiModel.fromJson(json as Map<String, dynamic>))
          .toList();

      return Result.ok(articles);

    } catch (e) {
      return Result.error(e); 
    }
  }
  
}
