import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:women_center_mobile/Models/sesi_konseling_model/sesi_konseling.dart';

class CounselingSessionViewModel extends ChangeNotifier {
  List<CounselingSession> _counselingsession = [];

  List<CounselingSession> get conseling => _counselingsession;

  Future<void> fetchcounselingsession() async {
    try {
      final response = await http.get(
        Uri.parse('https://api-ferminacare.tech/api/v1/counselors/counseling-session'),
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZnVsbF9uYW1lIjoiQm9iIE1pbGxlciIsImVtYWlsIjoiYm9iLm1pbGxlckBleGFtcGxlLmNvbSIsInJvbGUiOiJjb3Vuc2Vsb3IiLCJleHAiOjE3MDI3ODM5NzN9.ejQ3YlkWYUB0xH_qIyepmeW01xQ8NqBCgOqqkEZZ5To'
        },
      );

      if (response.statusCode == 200) {
        final dynamic jsonResponse = json.decode(response.body);

        if (jsonResponse['code'] == 200 && jsonResponse['data'] is List<dynamic>) {
          final List<dynamic> data = jsonResponse['data'];
          
          if (data.isNotEmpty) {
            _counselingsession = data.map((item) => CounselingSession.fromJson(item)).toList();
            notifyListeners();
          } else {
            print('No CounselingSession available.');
          }
        } else {
          throw Exception('Invalid response format');
        }
      } else {
        throw Exception('Failed to load CounselingSession. Status code: ${response.statusCode}');
      }
    } catch (error) {
      print('Error fetching CounselingSession: $error');
    }
  }
}
