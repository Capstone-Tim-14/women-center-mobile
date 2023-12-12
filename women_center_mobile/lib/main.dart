import 'package:flutter/material.dart';
import 'package:women_center_mobile/View/kalender/kalender.dart';
import 'package:women_center_mobile/View/splash_screen/splash_screen.dart';
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
      initialRoute: '/kalender',
      routes: {
        '/': (context) => const Splashscreen(),
        '/login': (context) => LoginView(),
        '/register': (context) => const Register(),
        '/onboarding': (context) => Onboarding(),
        '/kalender':(context) => KalenderPage()
      },
    );
  }
}
