import 'package:flutter/material.dart';
import 'package:women_center_mobile/View/login/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white, // Ubah warna latar belakang aplikasi
        body: Center(
          child: LoginWidget(),
        ),
      ),
    );
  }
}
