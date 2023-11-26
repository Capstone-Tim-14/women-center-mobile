import 'package:flutter/material.dart';
import 'package:women_center_mobile/View/artikel/artikel_ku.dart';
import 'package:women_center_mobile/View/homepage/notifikasi/homepage_notifikasi_3.dart';
import 'package:women_center_mobile/View/metode_pembayaran/metode_pembayaran_1.dart';
import 'package:women_center_mobile/View/metode_pembayaran/metode_pembayaran_2.dart';
import 'package:women_center_mobile/View/metode_pembayaran/pembayaran_widget_tabBar.dart';
import 'package:women_center_mobile/View/onboarding/onboarding.dart';
import 'package:women_center_mobile/View/splash_screen/splash_screen.dart';
// import 'View/login/login.dart';
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
        initialRoute: '/pembayaran1',
        routes: {
          '/': (context) => const Splashscreen(),
          // '/logim': (context) => const Login(),
          '/register': (context) => const Register(),
          '/onboarding': (context) => Onboarding(),
          '/homepagenotif3': (context) => HomepageNotifikasi3(),
          '/artikelku': (context) => const ArtikelKu(),
          '/payment': (context) => HomePage(),
          '/payment': (context) => const Payment2(),
          '/pembayaran1':(context) => const MetodePembayaran1()
        });
  }
}
