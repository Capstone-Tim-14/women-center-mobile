//raf taufiqurahman
import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(HomePage1());
}

class HomePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white, // Warna latar belakang AppBar putih
          elevation: 3.3,
          toolbarHeight: 70, // Bayangan hitam di bawah AppBar
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '👋',
                style: TextStyle(fontSize: 32),
              ),
              const SizedBox(width: 8),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Selamat Malam',
                    style: TextStyle(
                      color: Color(0xFF636363),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Raleway',
                      height: 0,
                    ),
                  ),
                  Text(
                    'Sherly Prameswari',
                    style: TextStyle(
                      color:
                          Color(0xFF0B0B0B), // Ubah warna sesuai kebutuhan Anda
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Raleway',
                      height: 0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 140,
              ),
              IconButton(
                icon: const Icon(
                  Icons.notifications_none_outlined,
                  color: Color(0xFF0B0B0B),
                  size: 29,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
        body: const Center(
          child: WidgetHome1(),
        ),
      ),
    );
  }
}

class WidgetHome1 extends StatefulWidget {
  const WidgetHome1({Key? key}) : super(key: key);

  @override
  State<WidgetHome1> createState() => _WidgetHome1State();
}

class _WidgetHome1State extends State<WidgetHome1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 25),
        Container(
          width: 360,
          height: 145,
          padding:
              const EdgeInsets.only(top: 19, left: 6, right: 6, bottom: 19),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            color: const Color(0xFFF8E8EE),
            shadows: const [
              BoxShadow(
                color: Color(0x19212121),
                blurRadius: 24,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 6,
              ),
              Container(
                width: 74,
                height: 106,
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(0, 7),
                    colors: [
                      Color(0xFFF2F2F2),
                      Color(0xFF9747FF),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x19212121),
                      blurRadius: 24,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // textDirection: TextDirection.ltr,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 9),
                            child: Text(
                              'Jumat',
                              style: TextStyle(
                                color: Color(0xFFF4518D),
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 9),
                            child: Text(
                              '15',
                              style: TextStyle(
                                color: Color(0xFFF4518D),
                                fontSize: 40,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 9),
                            child: Text(
                              'September',
                              style: TextStyle(
                                color: Color(0xFFF4518D),
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w400,
                                height: 0.18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 231,
                height: 50,
                padding: const EdgeInsets.only(),
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(1.00, -0.07),
                    end: Alignment(-1, 0.07),
                    colors: [Color(0xFF9747FF), Color(0xFFF4518D)],
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 10),
                            child: Text(
                              'Temukan dukunganmu',
                              style: TextStyle(
                                color: Color(0xFF1F1F1F),
                                fontSize: 14,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w600,
                                height: 0.11,
                              ),
                            ),
                          ),
                          // const SizedBox(height: 10),
                          Padding(
                              padding: EdgeInsets.only(top: 20, left: 88),
                              child: Text(
                                'Konseling',
                                style: TextStyle(
                                  color: Color(0xFF4B4B4B),
                                  fontSize: 14,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w600,
                                  height: 0.11,
                                ),
                              ))
                        ],
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      width: 56,
                      height: 56,
                      padding: const EdgeInsets.all(8),
                      decoration: ShapeDecoration(
                        color: Color(0xFFF8E8EE),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        shadows: [
                          BoxShadow(
                            color: Color(0x19212121),
                            blurRadius: 24,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(children: []),
                          ),
                        ],
                      ),
                    )
                    // Container(
                    //   width: 56,
                    //   height: 56,
                    //   padding: const EdgeInsets.all(2),
                    //   decoration: ShapeDecoration(
                    //     color: Color(0xFFF8E8EE),
                    //     shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(8)),
                    //     shadows: [
                    //       BoxShadow(
                    //         color: Color(0x19212121),
                    //         blurRadius: 24,
                    //         offset: Offset(0, 4),
                    //         spreadRadius: 0,
                    //       )
                    //     ],
                    //   ),
                    //   child: Row(
                    //     mainAxisSize: MainAxisSize.min,
                    //     mainAxisAlignment: MainAxisAlignment.start,
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       Container(
                    //         width: 40,
                    //         height: 40,
                    //         clipBehavior: Clip.antiAlias,
                    //         decoration: BoxDecoration(),
                    //         child: Stack(children: []),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              )
              // Container(
              //   width: 180,
              //   height: 50,
              //   padding: const EdgeInsets.only(left: 8),
              //   decoration: ShapeDecoration(
              //     gradient: const LinearGradient(
              //       begin: Alignment(0, 12),
              //       end: Alignment(0, 9),
              //       colors: [Color(0xFF9747FF), Color(0xFFF4518D)],
              //     ),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(8),
              //     ),
              //   ),
              //   child: const Column(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Padding(
              //         padding: EdgeInsets.only(top: 14),
              //         child: Text(
              //           'Temukan dukunganmu',
              //           style: TextStyle(
              //             color: Color(0xFF1F1F1F),
              //             fontSize: 14,
              //             fontFamily: 'Raleway',
              //             fontWeight: FontWeight.w600,
              //             height: 0.11,
              //           ),
              //         ),
              //       ),
              //       Padding(
              //           padding: EdgeInsets.only(top: 24, left: 88),
              //           child: Text(
              //             'Konseling',
              //             style: TextStyle(
              //               color: Color(0xFF4B4B4B),
              //               fontSize: 14,
              //               fontFamily: 'Raleway',
              //               fontWeight: FontWeight.w600,
              //               height: 0.11,
              //             ),
              //           ))
              //     ],
              //   ),
              // ),
              // Container(

              // )
            ],
          ),
        )
      ],
    );
  }
}

class Frame427319114 extends StatefulWidget {
  @override
  _Frame427319114State createState() => _Frame427319114State();
}

class _Frame427319114State extends State<Frame427319114> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 328,
            height: 145,
            padding:
                const EdgeInsets.only(top: 19, left: 6, right: 7, bottom: 19),
            decoration: ShapeDecoration(
              color: const Color(0xFFF8E8EE),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x19212121),
                  blurRadius: 24,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: double.infinity,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 74,
                        height: 106,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: ShapeDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment(0.00, -1.00),
                            end: Alignment(0, 1),
                            colors: [
                              Color(0xFFF4518D),
                              Color(0xFFF2F2F2),
                              Color(0xFF9747FF)
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: const Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Jumat',
                                          style: TextStyle(
                                            color: Color(0xFFF4518D),
                                            fontSize: 10,
                                            fontFamily: 'Raleway',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Text(
                                    '15',
                                    style: TextStyle(
                                      color: Color(0xFFF4518D),
                                      fontSize: 48,
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Text(
                              'November',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFF4518D),
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w400,
                                height: 0.18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 231,
                              height: 50,
                              padding: const EdgeInsets.only(left: 8),
                              decoration: ShapeDecoration(
                                gradient: const LinearGradient(
                                  begin: Alignment(1.00, -0.07),
                                  end: Alignment(-1, 0.07),
                                  colors: [
                                    Color(0xFF9747FF),
                                    Color(0xFFF4518D)
                                  ],
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: const Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          'Temukan dukunganmu',
                                          style: TextStyle(
                                            color: Color(0xFF1F1F1F),
                                            fontSize: 14,
                                            fontFamily: 'Raleway',
                                            fontWeight: FontWeight.w600,
                                            height: 0.11,
                                          ),
                                        ),
                                        SizedBox(height: 4),
                                        Text(
                                          'Konseling',
                                          style: TextStyle(
                                            color: Color(0xFF4B4B4B),
                                            fontSize: 14,
                                            fontFamily: 'Raleway',
                                            fontWeight: FontWeight.w600,
                                            height: 0.11,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFF8E8EE),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      shadows: const [
                                        BoxShadow(
                                          color: Color(0x19212121),
                                          blurRadius: 24,
                                          offset: Offset(0, 4),
                                          spreadRadius: 0,
                                        )
                                      ],
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 40,
                                          height: 40,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: const BoxDecoration(),
                                          child: const Stack(
                                            children: [],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 7),
                            Container(
                              height: 50,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 50,
                                    padding: const EdgeInsets.only(right: 8),
                                    decoration: ShapeDecoration(
                                      gradient: const LinearGradient(
                                        begin: Alignment(-1.00, -0.08),
                                        end: Alignment(1, 0.08),
                                        colors: [
                                          Color(0xFFFF5BCD),
                                          Color(0xFF9747FF)
                                        ],
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(8),
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFF8E8EE),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0x19212121),
                                                blurRadius: 24,
                                                offset: Offset(0, 4),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 40,
                                                height: 40,
                                                clipBehavior: Clip.antiAlias,
                                                decoration:
                                                    const BoxDecoration(),
                                                child: const Stack(
                                                  children: [],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Container(
                                          child: const Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Masih bingung soal karir ?',
                                                style: TextStyle(
                                                  color: Color(0xFF1F1F1F),
                                                  fontSize: 13,
                                                  fontFamily: 'Raleway',
                                                  fontWeight: FontWeight.w600,
                                                  height: 0.13,
                                                ),
                                              ),
                                              SizedBox(height: 4),
                                              Text(
                                                'Women Center AI',
                                                style: TextStyle(
                                                  color: Color(0xFF4B4B4B),
                                                  fontSize: 12,
                                                  fontFamily: 'Raleway',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0.14,
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
                          ],
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
    );
  }
}

//kode keemapt

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 145,
      padding: const EdgeInsets.only(top: 19, left: 6, right: 7, bottom: 19),
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Color(0xFFF4518D), Color(0xFFF2F2F2), Color(0xFF9747FF)],
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        shadows: const [
          BoxShadow(
            color: Color(0x19212121),
            blurRadius: 24,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: const Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Jumat',
                              style: TextStyle(
                                color: Color(0xFFF4518D),
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        '15',
                        style: TextStyle(
                          color: Color(0xFFF4518D),
                          fontSize: 48,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'November',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFF4518D),
                    fontSize: 10,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w400,
                    height: 0.18,
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

//kode ketiga
// CustomWidget(),
// Container(
//   height: double.infinity,
//   child: Row(
//     mainAxisSize: MainAxisSize.min,
//     mainAxisAlignment: MainAxisAlignment.start,
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Container(
//         width: 74,
//         height: 106,
//         padding: const EdgeInsets.symmetric(vertical: 10),
//         decoration: ShapeDecoration(
//           gradient: LinearGradient(
//             begin: Alignment(0.00, -1.00),
//             end: Alignment(0, 1),
//             colors: const [
//               Color(0xFFF4518D),
//               Color(0xFFF2F2F2),
//               Color(0xFF9747FF)
//             ],
//           ),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(8),
//           ),
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Container(
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment:
//                           CrossAxisAlignment.start,
//                       children: const [
//                         Text(
//                           'Jumat',
//                           style: TextStyle(
//                             color: Color(0xFFF4518D),
//                             fontSize: 10,
//                             fontFamily: 'Raleway',
//                             fontWeight: FontWeight.w400,
//                             height: 0,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Text(
//                     '15',
//                     style: TextStyle(
//                       color: Color(0xFFF4518D),
//                       fontSize: 48,
//                       fontFamily: 'Raleway',
//                       fontWeight: FontWeight.w600,
//                       height: 0,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Text(
//               'November',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 color: Color(0xFFF4518D),
//                 fontSize: 10,
//                 fontFamily: 'Raleway',
//                 fontWeight: FontWeight.w400,
//                 height: 0.18,
//               ),
//             ),
//           ],
//         ),
//       )
//     ],
//   ),
// ),
