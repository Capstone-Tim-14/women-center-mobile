import 'package:flutter/material.dart';
import 'package:women_center_mobile/View/artikel/artikel_ku.dart';
import 'package:women_center_mobile/View/homepage/notifikasi/homepage_notifikasi_3.dart';
import 'package:women_center_mobile/View/login/login_view.dart';
import 'package:women_center_mobile/View/onboarding/onboarding.dart';
import 'package:women_center_mobile/View/splash_screen/splash_screen.dart';
// import 'View/login/login.dart';
import 'View/register/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'women center',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
      ),
      initialRoute: '/',
      routes: {
        '/h': (context) => const Splashscreen(),
        '/': (context) => const LoginView(),
        '/register': (context) => const Register(),
        '/onboarding': (context) => Onboarding(),
        '/homepagenotif3': (context) => HomepageNotifikasi3(),
        '/artikelku': (context) => const ArtikelKu(),
      },
    );
  }
}
