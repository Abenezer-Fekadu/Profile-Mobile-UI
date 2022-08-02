import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:blog_app/blog_home/models/article.dart';

class ProfileDataProvider {
  Future<List<Article>> fetchArticles() async {
    final response = await http
        .get(Uri.parse("http://localhost:3000/api/articles/all"), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });

    if (response.statusCode == 200) {
      final articles = jsonDecode(response.body) as List;
      return articles.map((article) => Article.fromJson(article)).toList();
    } else {
      final err = jsonDecode(response.body);
      return err;
    }
  }
}
