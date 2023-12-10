import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:women_center_mobile/Models/artikel_model/buat_artikel_model.dart';

class ArticleViewModel extends ChangeNotifier {
  final String apiUrl = 'https://api-ferminacare.tech/api/v1/counselor/articles';
  List<Article> articles = [];

  Future<void> createArticle(Article article) async {
    try {
      final response = await http.post(
        Uri.parse('https://api-ferminacare.tech/api/v1/counselor/articles'),
        headers: <String, String>{
          'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6OSwiZnVsbF9uYW1lIjoiSWdlciBCb2IiLCJlbWFpbCI6IklnZXIxMjNAZ21haWwuY29tIiwicm9sZSI6ImNvdW5zZWxvciIsImV4cCI6MTcwMjE4NTQ4Nn0.jKu4JsYjayKSzw2-KX5bFdG_mgbESs_-POiw5452xo8',
        },
        body: jsonEncode(article.toJson()),
      );

      if (response.statusCode == 201) {
        // Artikel berhasil dibuat
        print('Article created successfully!');
      } else {
        // Artikel gagal dibuat
        print('Failed to create article. Status code: ${response.statusCode}');
      }
    } catch (error) {
      // Handle error jika ada kesalahan selama proses HTTP
      print('Error creating article: $error');
    }
  }
}
