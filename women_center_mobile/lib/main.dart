// JUHARMAN YANG MINTA
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:women_center_mobile/View/FAQ/bantuan.dart';
import 'package:women_center_mobile/View/konseling/konseling_pilihan_konselor_2.dart';
import 'package:women_center_mobile/View/artikel/artikel_view.dart';
import 'package:women_center_mobile/View/homepage/notifikasi/homepage_notifikasi.dart';
import 'package:women_center_mobile/View/artikel/artikel_ku.dart';
import 'package:women_center_mobile/View/homepage/notifikasi/homepage_notifikasi_3.dart';
import 'package:women_center_mobile/View/onboarding/onboarding.dart';
import 'package:women_center_mobile/View/riwayat/batal.dart';
import 'package:women_center_mobile/View/sesi_konseling/sesi_konseling.dart';
import 'package:women_center_mobile/ViewModel/career_viewmodel/career.dart';
import 'package:women_center_mobile/ViewModel/career_viewmodel/detail_career.dart';
import 'package:women_center_mobile/ViewModel/career_viewmodel/filter_carrerr.dart';
import 'View/career/detail_job.dart';
import 'View/career/career.dart';
import 'View/login/login_view.dart';
import 'View/register/register.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => JobViewModel()),
        ChangeNotifierProvider(create: (context) => DetailJobViewModel()),
        ChangeNotifierProvider(create: (context) => FilterJobTypesViewModel()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'women center',
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
            textTheme: GoogleFonts.ralewayTextTheme(
              Theme.of(context).textTheme,
            ),
          ),
          // initialRoute: '/onboarding',
          initialRoute: '/',
          routes: {
            '/': (context) => Career(),
            // '/login': (context) => const LoginView(),
            // '/register': (context) => const Register(),
            // '/onboarding': (context) => Onboarding(),
            // '/homepagenotif3': (context) => HomepageNotifikasi3(),
            // '/artikelku': (context) => const ArtikelKu(),
            // '/artikel': (context) => const Artikel(),
          }),
    );
  }
}
