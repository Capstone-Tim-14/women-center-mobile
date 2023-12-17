import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:women_center_mobile/View/homepage/homepage_section1.dart';
import 'package:women_center_mobile/View/homepage/homepage_section2.dart';
import 'package:women_center_mobile/View/homepage/homepage_section3.dart';
import 'package:women_center_mobile/ViewModel/api_onboarding/onboarding_api_update.dart';
import 'package:women_center_mobile/ViewModel/artikel_view_model/artikel_view_model.dart';
import 'package:women_center_mobile/ViewModel/career_view_model/career_view_model.dart';

class HomepageSectionKonselor extends StatefulWidget {
  final Function(int index) pindahHalaman;
  const HomepageSectionKonselor({super.key, required this.pindahHalaman});

  @override
  State<HomepageSectionKonselor> createState() =>
      _HomepageSectionKonselorState();
}

class _HomepageSectionKonselorState extends State<HomepageSectionKonselor> {
  final ApiOnboarding _apiOnboarding = ApiOnboarding();
  Map<String, dynamic> _userProfile = {};

  @override
  void initState() {
    super.initState();
    _fetchUserProfile();
    fetchData();
  }

  //fungsi fetching userprofile
  Future<void> _fetchUserProfile() async {
    try {
      final response = await _apiOnboarding.getUserProfile();
      setState(() {
        _userProfile = response['data'];
      });
    } catch (error) {
      print('Error fetching user profile: $error');
    }
  }

  void fetchData() {
    log("Fetching data...");
    context.read<ArtikelViewModel>().fetchLatestArtikel();
    context.read<CareerViewModel>().fetchAllCareer();
  }

  // }
  String getGreeting() {
    var currentTime = DateTime.now();
    var formattedTime = DateFormat.H().format(currentTime);

    if (currentTime.hour >= 5 && currentTime.hour < 11) {
      return 'Selamat Pagi';
    } else if (currentTime.hour >= 11 && currentTime.hour < 15) {
      return 'Selamat Siang';
    } else if (currentTime.hour >= 15 && currentTime.hour < 18) {
      return 'Selamat Sore';
    } else {
      return 'Selamat Malam';
    }
  }

  @override
  Widget build(BuildContext context) {
    fetchData();
    return GlassApp(
      theme: GlassThemeData(
          blur: 1,
          linearGradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0.5),
              Colors.white.withOpacity(0.5)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 70,
          automaticallyImplyLeading: false,
          flexibleSpace: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                  sigmaX: 20, sigmaY: 30), // Ubah nilai untuk tingkat blur
              child: Container(
                color: Colors.white
                    .withOpacity(0.1), // Warna latar belakang AppBar
                child: Padding(
                  padding: const EdgeInsets.only(top: 68, left: 19),
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
                          Text(
                            ' ${_userProfile['full_name']} ',
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
                        onPressed: () {
                          Navigator.pushNamed(context, '/notifikasi');
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                //homepage 1
                const WidgetHomeKonselor(),
                //homepage 2
                LatestArtikel(
                  pindahHalaman: widget.pindahHalaman,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
