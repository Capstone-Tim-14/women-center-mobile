import 'package:flutter/material.dart';
import 'package:women_center_mobile/View/login/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('Assets/images/backgroud_loginPage.jpeg'),
                fit: BoxFit.cover),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 260,
                ),
                LoginWidget(),
                SizedBox(
                  height: 232,
                ),
                DonTHaveAnAccountSignUp()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
