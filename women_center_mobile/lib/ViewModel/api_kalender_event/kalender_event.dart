import 'package:dio/dio.dart';

class ApiKalender {
  final Dio _dio = Dio();
  String _authToken =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjMsImZ1bGxfbmFtZSI6ImFndW5nYmhhc2thcmEiLCJlbWFpbCI6ImFndW5nMTIzQGdtYWlsLmNvbSIsInJvbGUiOiJ1c2VyIiwiZXhwIjoxNzAyODMwMTc2fQ.kj8dDApHRzV3WTH-m_PXpu0HNV0Sf_g5T929aeOF-S8';

  // Set the authentication token
  void setAuthToken(String token) {
    _authToken = token;
  }
  // String _authToken;

  // ApiKalender(this._authToken);

  Future<Map<String, dynamic>> getUserProfile() async {
    try {
      final response = await _dio.get(
        'https://api-ferminacare.tech/api/v1/event/1',
        options: Options(headers: {'Authorization': 'Bearer $_authToken'}),
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
        options: Options(headers: {'Authorization': 'Bearer $_authToken'}),
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