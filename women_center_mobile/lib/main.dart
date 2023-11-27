import 'package:flutter/material.dart';
import 'package:women_center_mobile/View/artikel_2/artikel_2.dart';
import 'package:women_center_mobile/View/homepage/homepage_view.dart';
import 'package:women_center_mobile/View/homepage/notifikasi/homepage_notifikasi.dart';
import 'package:women_center_mobile/View/onboarding/onboarding.dart';
import 'package:women_center_mobile/View/splash_screen/splash_screen.dart';
import 'View/bottomnavigationbar/main_page.dart';
import 'View/homepage/homepage_section3.dart';
import 'View/login/login_view.dart';
import 'View/onboarding/onboarding.dart';
import 'View/register/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'women center',
        theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink)),
        initialRoute: '/artikel2',
        routes: {
          '/': (context) => const Splashscreen(),
          '/login': (context) => const LoginView(),
          '/register': (context) => const Register(),
          '/onboarding': (context) => const Onboarding(),
          '/notifikasi': (context) => HomepageNotifikasi(),
          '/artikel2': (context) => const Artikel2(),
          '/homepageview':(context) => const HomepageSection(),
        });
  }
}
