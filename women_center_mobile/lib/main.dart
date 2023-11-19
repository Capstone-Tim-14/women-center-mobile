import 'package:flutter/material.dart';
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
      initialRoute: '/main_page',
      routes: {
        '/': (context) => const Splashscreen(),
        '/login': (context) => const LoginView(),
        '/register': (context) => const Register(),
        '/onboarding': (context) => Onboarding(),
        '/main_page': (context) => const MainPage(),
      },
    );
  }
}
