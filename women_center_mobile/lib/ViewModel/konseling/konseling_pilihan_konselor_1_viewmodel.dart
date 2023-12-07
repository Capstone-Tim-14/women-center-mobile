// counselor_view_model.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:women_center_mobile/Models/konseling/konseling_pilihan_konselor_1_model.dart';

class CounselorViewModel extends ChangeNotifier {
  List<Counselor> _counselors = [];

  List<Counselor> get counselors => _counselors;

  Future<void> fetchCounselors() async {
    try {
      final response = await http.get(
        Uri.parse('https://api-ferminacare.tech/api/v1/counselors'),
        headers: {
          'Authorization': 'Bearer ',
        },
      );

      if (response.statusCode == 200) {
        final dynamic jsonResponse = json.decode(response.body);

        if (jsonResponse['code'] == 200 && jsonResponse['data'] is List<dynamic>) {
          final List<dynamic> data = jsonResponse['data'];

          if (data.isNotEmpty) {
            _counselors = data.map((item) => Counselor.fromJson(item)).toList();
            notifyListeners();
          } else {
            print('No counselors available.');
          }
        } else {
          throw Exception('Invalid response format');
        }
      } else {
        throw Exception('Failed to load counselors. Status code: ${response.statusCode}');
      }
    } catch (error) {
      print('Error fetching counselors: $error');
    }
  }
}
