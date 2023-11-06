import 'package:flutter/material.dart';
import 'package:women_center_mobile/View/onboarding/onboarding.dart';
import 'package:women_center_mobile/View/splash_screen/splash_screen.dart';

import 'View/login/login.dart';
import 'View/register/register.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'women center',
      theme: ThemeData(),

    initialRoute: '/',
    routes: {
      '/': (context) => const Splashscreen(),
      '/logim': (context) => const Login(),
      '/register': (context) => const Register(),
      '/onboarding': (context) => const Onboarding(),
    }
    );
  }
}