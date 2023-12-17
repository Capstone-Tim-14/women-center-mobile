import 'dart:convert';
import 'package:dio/dio.dart';

import 'package:women_center_mobile/Models/utils/auth_service.dart';

class ApiProfil {
  final Dio _dio = Dio();
  final String _authToken =
      // 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjMsImZ1bGxfbmFtZSI6ImFndW5nYmhhc2thcmEiLCJlbWFpbCI6ImFndW5nMTIzQGdtYWlsLmNvbSIsInJvbGUiOiJ1c2VyIiwiZXhwIjoxNzAyNzczNDgyfQ.3HK59qgOrPm_Uxx9OE_NrfoFK_UeUvpQSnsc7cxoKPc';
      AuthService.token;
  // void setAuthToken(String token) {
  //   _authToken = token;
  // }

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
}
