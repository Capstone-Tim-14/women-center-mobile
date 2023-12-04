import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:women_center_mobile/Models/career_model/career.dart';

class JobViewModel extends ChangeNotifier {
  List<Job> _jobs = [];

  List<Job> get jobs => _jobs;

  Future<void> fetchJobs() async {
    try {
      final response = await http.get(
        Uri.parse('https://api-ferminacare.tech/api/v1/careers'),
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZnVsbF9uYW1lIjoicHV0cmlkaWFuYSIsImVtYWlsIjoicHV0cmlAZ21haWwuY29tIiwicm9sZSI6InVzZXIiLCJleHAiOjE3MDE3MTAxMDh9.c_QkpWZOsgs-IBd4mIqnZ0C2sH3I7hElt7YsNL2F82U'
        },
      );

      if (response.statusCode == 200) {
        final dynamic jsonResponse = json.decode(response.body);

        if (jsonResponse['code'] == 200 && jsonResponse['data'] is List<dynamic>) {
          final List<dynamic> data = jsonResponse['data'];
          
          if (data.isNotEmpty) {
            _jobs = data.map((item) => Job.fromJson(item)).toList();
            notifyListeners();
          } else {
            print('No jobs available.');
          }
        } else {
          throw Exception('Invalid response format');
        }
      } else {
        throw Exception('Failed to load jobs. Status code: ${response.statusCode}');
      }
    } catch (error) {
      print('Error fetching jobs: $error');
    }
  }

}


