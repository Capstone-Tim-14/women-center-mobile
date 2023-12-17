import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../Models/utils/auth_service.dart';

class KalenderViewModel with ChangeNotifier {

  void updateToken(String newToken) {
    AuthService.token = newToken;
    notifyListeners();
  }
}
class ApiKalender {
  final Dio _dio = Dio();

  Future<Map<String, dynamic>> getUserProfile() async {
    try {
      final response = await _dio.get(
        'https://api-ferminacare.tech/api/v1/event/1',
        options: Options(headers: {'Authorization': 'Bearer ${AuthService.token}'}),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = response.data;
        return data;
      } else {
        throw Exception('Failed to load user profile');
      }
    } catch (error) {
      throw Exception('Failed to load user profile: $error');
    }
  }

  Future<Map<String, dynamic>> getCounselingPackages() async {
    try {
      final response = await _dio.get(
        'https://api-ferminacare.tech/api/v1/counseling-packages',
        options: Options(headers: {'Authorization': 'Bearer ${AuthService.token}'}),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> datakonseling = response.data;
        // print(datakonseling);
        return datakonseling;
      } else {
        throw Exception('Failed to load counseling packages');
      }
    } catch (error) {
      throw Exception('Failed to load counseling packages: $error');
    }
  }
}