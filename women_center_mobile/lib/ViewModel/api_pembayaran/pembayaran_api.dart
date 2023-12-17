import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import '../../Models/utils/auth_service.dart';

class PembayaranViewModel with ChangeNotifier {

  void updateToken(String newToken) {
    AuthService.token = newToken;
    notifyListeners();
  }
}

class ApiPembayaran {
  final Dio _dio = Dio();

  Future<Map<String, dynamic>> getUserProfile() async {
    try {
      final response = await _dio.get(
        'https://api-ferminacare.tech/api/v1/users/profile',
        options: Options(headers: {'Authorization': 'Bearer ${AuthService.token}'}),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = response.data;
        printUserProfile(data);
        return data;
      } else {
        throw Exception('Failed to load user profile');
      }
    } catch (error) {
      throw Exception('Failed to load user profile: $error');
    }
  }

  void printUserProfile(Map<String, dynamic> data) {
    print('Full Name: ${data['full_name']}');
    print('Email: ${data['email']}');
  }
}