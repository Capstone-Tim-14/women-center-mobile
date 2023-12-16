import 'package:dio/dio.dart';

class ApiProfil {
  final Dio _dio = Dio();
  String _authToken = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZnVsbF9uYW1lIjoiYWd1bmdiaGFza2FyYSIsImVtYWlsIjoiYWd1bmcxMjNAZ21haWwuY29tIiwicm9sZSI6InVzZXIiLCJleHAiOjE3MDIwODcxNzN9.tiAPexMQgpexmoLi0K0rM5c5ynxmgBzTfpVgz_486Gk'; // Variable to store the authentication token

  // Set the authentication token
  void setAuthToken(String token) {
    _authToken = token;
  }

  Future<Map<String, dynamic>> getUserProfile() async {
    try {
      final response = await _dio.get(
        'https://api-ferminacare.tech/api/v1/users/profile',
        options: Options(headers: {'Authorization': 'Bearer $_authToken'}),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = response.data;
        print('User Profile Data:');
        print('ID: ${data['id']}');
        print('Username: ${data['username']}');
        print('Full Name: ${data['full_name']}');
        print('Email: ${data['email']}');
        print('Birthday: ${data['birthday']}');

        return data;
      } else {
        throw Exception('Failed to load user profile');
      }
    } catch (error) {
      throw Exception('Failed to load user profile: $error');
    }
  }
}