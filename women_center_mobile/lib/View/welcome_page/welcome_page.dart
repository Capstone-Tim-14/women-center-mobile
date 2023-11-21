import 'package:flutter/material.dart';
import 'dart:ui';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('Assets/images/welcome.jpg',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100, bottom: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Women Center'),
                Expanded(child: SizedBox()),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.white),
                  ),
                  onPressed: () {},
                  // child: BackdropFilter(
                  //   filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                  // ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Color(0XFFF2BED1),
                        endIndent: 10,
                      ),
                    ),
                    Text('Or', style: TextStyle(color: Color(0XFFF2BED1)),),
                    Expanded(
                      child: Divider(
                        color: Color(0XFFF2BED1),
                        indent: 10, //jarak kiri
                      ),
                    ),
                  ],
                ),
                 MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.white),
                  ),
                  onPressed: () {},
                  color: Color(0XFF483E42),
                  child: Row(
                    children: [
                      Image.asset('Assets/images/google.png', width: 25,),
                      SizedBox(width: 10,),
                      Text(
                        'Login With Google',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                 
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
