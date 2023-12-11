import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:women_center_mobile/Models/artikel_model/buat_artikel_model.dart';
import 'package:dio/dio.dart';
import 'package:path/path.dart';
import 'dart:io';

class ArticleViewModel extends ChangeNotifier {
  final String apiUrl = 'https://api-ferminacare.tech/api/v1/counselor/articles';
  List<Article> articles = [];
  final Dio _dio = Dio();
  Future<void> createArticle(Article article, BuildContext context) async {
    String title = 'your-title';
    String content = 'your-content';
    String filePath = '/data/user/0/com.example.women_center_mobile/cache/file_picker/illust_92958718_20211121_202436.jpg';
    FormData formData = FormData.fromMap({
    "title": title,
    "content": content,
    "thumbnail": await MultipartFile.fromFile(
        filePath,
      filename: basename(filePath),
    ),
  });
  print('ini data : $formData');
    try {
      final response = await _dio.post(
      'https://api-ferminacare.tech/api/v1/counselor/articles', 
      data: formData,
      options: Options(
        headers: {
          'Authorization': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6OSwiZnVsbF9uYW1lIjoiSWdlciBCb2IiLCJlbWFpbCI6IklnZXIxMjNAZ21haWwuY29tIiwicm9sZSI6ImNvdW5zZWxvciIsImV4cCI6MTcwMjMyMzkyMX0.WeO_bns34IAAI-3v3qXZGqRy9daG8LzSo11zf0rfhPY',
        },
        contentType: Headers.formUrlEncodedContentType,
      ),
    );
      // final response = await http.post(
      //   Uri.parse('https://api-ferminacare.tech/api/v1/counselor/articles'),
      //   headers: <String, String>{
      //     'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6OSwiZnVsbF9uYW1lIjoiSWdlciBCb2IiLCJlbWFpbCI6IklnZXIxMjNAZ21haWwuY29tIiwicm9sZSI6ImNvdW5zZWxvciIsImV4cCI6MTcwMjMyMzkyMX0.WeO_bns34IAAI-3v3qXZGqRy9daG8LzSo11zf0rfhPY',
      //     'Content-Type': 'application/json', // Tambahkan header Content-Type
      //   },
      //   body: jsonEncode(article.toJson()), // Ubah objek menjadi JSON
      // );

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
