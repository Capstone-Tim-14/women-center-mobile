// GlassApp(
//  theme: GlassThemeData(
//    blur: 10,
//  ),
//  home: MaterialApp(
//    title: 'Flutter Demo',
//    theme: ThemeData(
//      primarySwatch: Colors.blue,
//    ),
//    home: Scaffold(
//      appBar: GlassAppBar(
//        title: GlassText(
//          'Glass Morphic Demo',
//          fontWeight: FontWeight.bold,
//          color: Colors.white,
//        ),
//      ),
//      body: Center(
//        child: Text('Hello, Flutter!'),
//      ),
//    ),
//  ),
// )

import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                  sigmaX: 10, sigmaY: 10), // Ubah nilai untuk tingkat blur
              child: Container(
                color: Colors.white
                    .withOpacity(0.1), // Warna latar belakang AppBar
                child: Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '👋',
                        style: TextStyle(fontSize: 32),
                      ),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            getGreeting(),
                            style: const TextStyle(
                              color: Color(0xFF636363),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Raleway',
                              height: 0,
                            ),
                          ),
                          const Text(
                            'Sherly Prameswari',
                            style: TextStyle(
                              color: Color(
                                  0xFF0B0B0B), // Ubah warna sesuai kebutuhan Anda
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Raleway',
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 140,
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.notifications_none_outlined,
                          color: Color(0xFF0B0B0B),
                          size: 29,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        body: Container(
            // Isi body aplikasi Anda di sini
            ),
      ),
    );
  }

  String getGreeting() {
    // Fungsi untuk mendapatkan salam sesuai waktu
    // Bisa Anda isi dengan logika yang sesuai
    return "Good Morning"; // Contoh sederhana
  }
}
