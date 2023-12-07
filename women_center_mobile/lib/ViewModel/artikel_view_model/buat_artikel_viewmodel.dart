import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:women_center_mobile/Models/artikel_model/buat_artikel_model.dart';

class ArticleViewModel extends ChangeNotifier {
  final String apiUrl = 'api-ferminacare.tech/api/v1/counselor/articles';
  List<Article> articles = [];

  Future<void> createArticle(Article article) async {
    final response = await http.post(
      Uri.parse('$apiUrl/articles'),
      headers: <String, String>{
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ',
      },
      body: jsonEncode(article.toJson()),
    );

    if (response.statusCode == 201) {
      // Artikel berhasil dibuat
      // Tambahkan logika lain jika diperlukan
    } else {
      // Artikel gagal dibuat
      // Tambahkan logika lain jika diperlukan
    }
  }
}
