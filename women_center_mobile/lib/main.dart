import 'package:flutter/material.dart';
import 'View/konseling/konseling_page_pilihan_paket.dart';
import 'View/login/login.dart';
import 'View/onboarding/onboarding.dart';
import 'View/register/register.dart';
import 'View/splash_screen/splash_screen.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Splashscreen(),
        '/': (context) => const Splashscreen(),
        '/logim': (context) => const Login(),
        '/register': (context) => const Register(),
        '/onboarding': (context) => const Onboarding(),
        '/pilihan_paket': (context) => const PilihanPaket(),
      },
    );
  }
}
