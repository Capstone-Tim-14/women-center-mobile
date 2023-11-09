import 'package:flutter/material.dart';
import 'package:women_center_mobile/View/login/login_widget.dart';

void main() {
  runApp(LoginView());
}

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Assets/images/backgroud_loginPage.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 260,
                    ),
                    LoginWidget(),
                    SizedBox(height: 185),
                    DonTHaveAnAccountSignUp(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
