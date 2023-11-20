import 'package:flutter/material.dart';
import 'package:women_center_mobile/View/konseling/konseling_pilihan_konselor_2.dart';
import 'package:women_center_mobile/View/onboarding/onboarding.dart';
import 'package:women_center_mobile/View/splash_screen/splash_screen.dart';
import 'View/login/login.dart';
import 'View/register/register.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'women center',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        textTheme: GoogleFonts.ralewayTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      initialRoute: '/konselor2',
      routes: {
        '/': (context) => const Splashscreen(),
        '/logim': (context) => const Login(),
        '/register': (context) => const Register(),
        '/onboarding': (context) => const Onboarding(),
        '/konselor2': (context) => const KonselingPilihanKonselor2(),
      },
    );
  }
}
