import 'package:flutter/material.dart';


class RiwayatKonselirBatalkan extends StatefulWidget {
  @override
  _RiwayatKonselirBatalkanState createState() =>
      _RiwayatKonselirBatalkanState();
}

class _RiwayatKonselirBatalkanState extends State<RiwayatKonselirBatalkan> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Container(
          width: 357,
          height: 169,
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            shadows: [
              const BoxShadow(
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 333,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Andika Kagen Band',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF1F1F1F),
                              fontSize: 14,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(

                            width: 140,
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Booking Id : ',
                                        style: TextStyle(
                                          color: Color(0xFF1F1F1F),
                                          fontSize: 12,
                                          fontFamily: 'Raleway',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),
                                      TextSpan(

                                        text: '812jk8uhju5',
                                        style: TextStyle(
                                          color: Color(0xFFF4518D),
                                          fontSize: 12,
                                          fontFamily: 'Raleway',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Paket Voice Call',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF939393),
                        fontSize: 12,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Container(
                width: 357,
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0x49A6A6A6),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Container(
                height: 46,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons
                                .date_range, // Ganti dengan ikon yang diinginkan
                            size: 20,
                            color: Colors
                                .black, // Sesuaikan dengan warna ikon yang diinginkan
                          ),
                          SizedBox(width: 6),
                          Text(
                            'Senin, 2 Oktober 2023',
                            style: TextStyle(
                              color: Color(0xFF1F1F1F),
                              fontSize: 12,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 6),
                    Container(
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons
                                .access_time, // Ganti dengan ikon yang diinginkan
                            size: 20,
                            color: Colors
                                .black, // Sesuaikan dengan warna ikon yang diinginkan
                          ),
                          SizedBox(width: 6),
                          Text(

                            '10:oo-12:00',
                            style: TextStyle(
                              color: Color(0xFFF4518D),
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
              const SizedBox(height: 12),
              Container(
                height: 20,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 333,
                      child: const Padding(
                        padding: EdgeInsets.only(left: 240),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(

                              Icons.cancel, // Ganti dengan ikon yang diinginkan
                              size: 20,
                              color: Colors
                                  .red, // Sesuaikan dengan warna ikon yang diinginkan
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 3),
                              child: SizedBox(

                                width: 70,
                                child: Text(
                                  'Dibatalkan',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 14,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
