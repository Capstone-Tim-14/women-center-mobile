//Rafi Taufiqurahman Create LoginWidget
import 'package:flutter/material.dart';

//widget form login
class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 345,
              height: 293,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Login',
                          style: TextStyle(
                            color: Color(0xFFF9F5F6),
                            fontSize: 32,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Email',
                                            style: TextStyle(
                                              color: Color(0xFFF9F5F6),
                                              fontSize: 12,
                                              fontFamily: 'Raleway',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 345,
                                      padding: const EdgeInsets.only(
                                        top: 17,
                                        left: 20,
                                        right: 324,
                                        bottom: 17,
                                      ),
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFF9F5F6),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Password',
                                            style: TextStyle(
                                              color: Color(0xFFF9F5F6),
                                              fontSize: 12,
                                              fontFamily: 'Raleway',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 345,
                                      padding: const EdgeInsets.only(
                                        top: 17,
                                        left: 20,
                                        right: 324,
                                        bottom: 17,
                                      ),
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFF9F5F6),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 14,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 345,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 144, vertical: 14),
                          decoration: ShapeDecoration(
                            color: Color(0xFFF4518D),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Color(0xFFF9F5F6),
                            fontSize: 12,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//widget tidak punya akun
class DonTHaveAnAccountSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Don’t have an account?',
                style: TextStyle(
                  color: Color(0xFFF9F5F6),
                  fontSize: 12,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
              TextSpan(
                text: ' ',
                style: TextStyle(
                  color: Color(0xFFF2BED1),
                  fontSize: 12,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
              TextSpan(
                text: 'Sign Up',
                style: TextStyle(
                  color: Color(0xFFF2BED1),
                  fontSize: 12,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                  height: 0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}



// // import 'package:flutter/material.dart';

// void main() {
//   runApp(const FigmaToCodeApp());
// }

// // Generated by: https://www.figma.com/community/plugin/842128343887142055/
// class FigmaToCodeApp extends StatelessWidget {
//   const FigmaToCodeApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData.dark().copyWith(
//         scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
//       ),
//       home: Scaffold(
//         body: ListView(children: [
//           Login(),
//         ]),
//       ),
//     );
//   }
// }

// class Login extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           width: 393,
//           height: 852,
//           clipBehavior: Clip.antiAlias,
//           decoration: BoxDecoration(color: Color(0xFF636363)),
//           child: Stack(
//             children: [
//               Positioned(
//                 left: 0,
//                 top: 0,
//                 child: Container(
//                   width: 393,
//                   height: 852,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: NetworkImage("https://via.placeholder.com/393x852"),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 left: 24,
//                 top: 279,
//                 child: Container(
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                         child: Column(
//                           mainAxisSize: MainAxisSize.min,
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Login',
//                               style: TextStyle(
//                                 color: Color(0xFFF9F5F6),
//                                 fontSize: 32,
//                                 fontFamily: 'Raleway',
//                                 fontWeight: FontWeight.w700,
//                                 height: 0,
//                               ),
//                             ),
//                             const SizedBox(height: 12),
//                             Container(
//                               child: Column(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Container(
//                                     child: Column(
//                                       mainAxisSize: MainAxisSize.min,
//                                       mainAxisAlignment: MainAxisAlignment.start,
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         Container(
//                                           child: Column(
//                                             mainAxisSize: MainAxisSize.min,
//                                             mainAxisAlignment: MainAxisAlignment.start,
//                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                             children: [
//                                               Text(
//                                                 'Email',
//                                                 style: TextStyle(
//                                                   color: Color(0xFFF9F5F6),
//                                                   fontSize: 12,
//                                                   fontFamily: 'Raleway',
//                                                   fontWeight: FontWeight.w400,
//                                                   height: 0,
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                         Container(
//                                           width: 345,
//                                           padding: const EdgeInsets.only(
//                                             top: 17,
//                                             left: 20,
//                                             right: 324,
//                                             bottom: 17,
//                                           ),
//                                           decoration: ShapeDecoration(
//                                             color: Color(0xFFF9F5F6),
//                                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   const SizedBox(height: 10),
//                                   Container(
//                                     child: Column(
//                                       mainAxisSize: MainAxisSize.min,
//                                       mainAxisAlignment: MainAxisAlignment.start,
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         Container(
//                                           child: Column(
//                                             mainAxisSize: MainAxisSize.min,
//                                             mainAxisAlignment: MainAxisAlignment.start,
//                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                             children: [
//                                               Text(
//                                                 'Password',
//                                                 style: TextStyle(
//                                                   color: Color(0xFFF9F5F6),
//                                                   fontSize: 12,
//                                                   fontFamily: 'Raleway',
//                                                   fontWeight: FontWeight.w400,
//                                                   height: 0,
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                         Container(
//                                           width: 345,
//                                           padding: const EdgeInsets.only(
//                                             top: 17,
//                                             left: 20,
//                                             right: 324,
//                                             bottom: 17,
//                                           ),
//                                           decoration: ShapeDecoration(
//                                             color: Color(0xFFF9F5F6),
//                                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       const SizedBox(height: 40),
//                       Container(
//                         decoration: BoxDecoration(
//                           boxShadow: [
//                             BoxShadow(
//                               color: Color(0x19000000),
//                               blurRadius: 14,
//                               offset: Offset(0, 4),
//                               spreadRadius: 0,
//                             )
//                           ],
//                         ),
//                         child: Column(
//                           mainAxisSize: MainAxisSize.min,
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           children: [
//                             Container(
//                               width: 345,
//                               padding: const EdgeInsets.symmetric(horizontal: 144, vertical: 14),
//                               decoration: ShapeDecoration(
//                                 color: Color(0xFFF4518D),
//                                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//                               ),
//                               child: Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Text(
//                                     'Login',
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 16,
//                                       fontFamily: 'Raleway',
//                                       fontWeight: FontWeight.w700,
//                                       height: 0,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             const SizedBox(height: 6),
//                             Text(
//                               'Forgot Password?',
//                               style: TextStyle(
//                                 color: Color(0xFFF9F5F6),
//                                 fontSize: 12,
//                                 fontFamily: 'Raleway',
//                                 fontWeight: FontWeight.w500,
//                                 height: 0,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Positioned(
//                 left: 108,
//                 top: 814,
//                 child: Text.rich(
//                   TextSpan(
//                     children: [
//                       TextSpan(
//                         text: 'Don’t have an account?',
//                         style: TextStyle(
//                           color: Color(0xFFF9F5F6),
//                           fontSize: 12,
//                           fontFamily: 'Raleway',
//                           fontWeight: FontWeight.w500,
//                           height: 0,
//                         ),
//                       ),
//                       TextSpan(
//                         text: ' ',
//                         style: TextStyle(
//                           color: Color(0xFFF2BED1),
//                           fontSize: 12,
//                           fontFamily: 'Raleway',
//                           fontWeight: FontWeight.w500,
//                           height: 0,
//                         ),
//                       ),
//                       TextSpan(
//                         text: 'Sign Up',
//                         style: TextStyle(
//                           color: Color(0xFFF2BED1),
//                           fontSize: 12,
//                           fontFamily: 'Raleway',
//                           fontWeight: FontWeight.w500,
//                           textDecoration: TextDecoration.underline,
//                           height: 0,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Positioned(
//                 left: 32,
//                 top: 1,
//                 child: Container(
//                   height: 52,
//                   padding: const EdgeInsets.symmetric(vertical: 10),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     children: [
//                       Text(
//                         '9:30',
//                         style: TextStyle(
//                           color: Color(0xFF1D1B20),
//                           fontSize: 14,
//                           fontFamily: 'Roboto',
//                           fontWeight: FontWeight.w500,
//                           height: 0.10,
//                           letterSpacing: 0.14,
//                         ),
//                       ),
//                       const SizedBox(width: 255),
//                       const SizedBox(width: 255),
//                       Container(
//                         width: 46,
//                         height: 17,
//                         child: Stack(
//                           children: [
//                             Positioned(
//                               left: 0,
//                               top: 0,
//                               child: Container(
//                                 width: 17,
//                                 height: 17,
//                                 child: Stack(
//                                   children: [
//                                     Positioned(
//                                       left: 0,
//                                       top: 0,
//                                       child: Container(width: 17, height: 17),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             Positioned(
//                               left: 16,
//                               top: 0,
//                               child: Container(
//                                 width: 17,
//                                 height: 17,
//                                 child: Stack(children: [
//                                 ,
//                                 ]),
//                               ),
//                             ),
//                             Positioned(
//                               left: 38,
//                               top: 1,
//                               child: Container(
//                                 width: 8,
//                                 height: 15,
//                                 child: Stack(children: [
//                                 ,
//                                 ]),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }