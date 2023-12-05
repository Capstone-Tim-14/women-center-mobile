import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:women_center_mobile/Models/career_model/detail_career.dart';

class DetailJobViewModel extends ChangeNotifier {
  JobDetail? _jobDetail;

  JobDetail? get jobDetail => _jobDetail;

  Future<void> fetchJobDetail(int jobId) async {
    try {
      final response = await http.get(
        Uri.parse('https://api-ferminacare.tech/api/v1/career/$jobId'),
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZnVsbF9uYW1lIjoicHV0cmlkaWFuYSIsImVtYWlsIjoicHV0cmlAZ21haWwuY29tIiwicm9sZSI6InVzZXIiLCJleHAiOjE3MDE4MDk1MzZ9.sWtpzP6BIkHH5vcI9OQb72FWIzD0zr1Y8YJAlmNbZ9s'
        },
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        _jobDetail = JobDetail.fromJson(data['data']);
        notifyListeners();
      } else {
        throw Exception('Failed to load job detail');
      }
    } catch (error) {
      print('Error fetching job detail: $error');
    }
  }
}
