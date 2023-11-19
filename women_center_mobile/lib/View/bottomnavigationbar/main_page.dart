import 'package:flutter/material.dart';
import 'package:women_center_mobile/View/bottomnavigationbar/bottom_navigation_bar.dart';

import '../homepage/homepage_view.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  final List screens = [
    HomepageSection(),

    const Center(
      child: Text('artikel'),
    ),
    const Center(
      child: Text('karir'),
    ),
    const Center(
      child: Text('order'),
    ),
    const Center(
      child: Text('profile'),
    ),
    //kalau halaman sudah siap, setiap nama di ganti ke halaman aslinya
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: MyBottomNavigationBar(
        selectedIndex: selectedIndex,
        onItemTapped: (index) => setState(() => selectedIndex = index),
      ),
      // backgroundColor: const Color(0xFFF9F5F6),
      // appBar: AppBar(
      //   title: const Text(
      //     "Konseling",
      //     style: TextStyle(
      //       color: Color(0xFfF1F1F1F),
      //       fontFamily: 'Raleway',
      //       fontWeight: FontWeight.bold,
      //       fontSize: 20,
      //     ),
      //   ),
      //   centerTitle: true,
      //   backgroundColor: const Color(0xFFFDCEDF),
      //   leading: IconButton(
      //     icon: const Icon(Icons.arrow_back),
      //     onPressed: () {
      //       //tombol kembali mengarah ke home
      //       Navigator.of(context).pop();
      //     },
      //   ),
      // ),
    );
  }
}
