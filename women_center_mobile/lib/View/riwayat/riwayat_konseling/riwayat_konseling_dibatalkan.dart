import 'package:flutter/material.dart';

class RiwayatKonselingBatal extends StatefulWidget {
  @override
  _RiwayatKonselingBatalState createState() => _RiwayatKonselingBatalState();
}

class _RiwayatKonselingBatalState extends State<RiwayatKonselingBatal> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: Color(0xFFF8E8EE),
          margin: EdgeInsets.all(15.0),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'Assets/images/riwayatbatal2.png',
                            width:
                                60.0, // Sesuaikan dengan ukuran gambar yang diinginkan
                            height: 60.0,
                            fit: BoxFit
                                .cover, // Sesuaikan dengan kebutuhan tata letak gambar
                          ),
                        ),
                        SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Stenafie Russel, M.Psi., Psikolog',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Raleway'),
                            ),
                            Text(
                              'Psikolog • Universitas Indonesia',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Color(0xFFF4518D),
                                  fontFamily: 'Raleway'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Divider(),
                SizedBox(height: 10),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.calendar_today, color: Colors.black),
                        SizedBox(width: 3.0),
                        Text(
                          '12 November 2023',
                          style:
                              TextStyle(fontSize: 16.0, fontFamily: 'Raleway'),
                        ),
                        SizedBox(width: 60.0),
                        Icon(Icons.schedule, color: Colors.black),
                        SizedBox(width: 5),
                        Text(
                          '09:00-11:00',
                          style:
                              TextStyle(fontSize: 16.0, fontFamily: 'Raleway'),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.cancel, color: Color(0xFFFE10000), size: 27),
                        SizedBox(width: 3.0),
                        Text(
                          'Dibatalkan',
                          style: TextStyle(
                              fontSize: 17,
                              color: Color(0xFFFE10000),
                              fontFamily: 'Raleway'),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Card(
          color: Color(0xFFF8E8EE),
          margin: EdgeInsets.all(15.0),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'Assets/images/riwayatbatal1.png',
                            width:
                                60.0, // Sesuaikan dengan ukuran gambar yang diinginkan
                            height: 60.0,
                            fit: BoxFit
                                .cover, // Sesuaikan dengan kebutuhan tata letak gambar
                          ),
                        ),
                        SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Stenafie Russel, M.Psi., Psikolog',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Psikolog • Universitas Indonesia',
                              style: TextStyle(
                                  fontSize: 16.0, color: Color(0xFFF4518D)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Divider(),
                SizedBox(height: 10),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.calendar_today, color: Colors.black),
                        SizedBox(width: 3.0),
                        Text(
                          '12 November 2023',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(width: 60.0),
                        Icon(Icons.schedule, color: Colors.black),
                        SizedBox(width: 8.0),
                        Text(
                          '09:00-11:00',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.cancel, color: Color(0xFFFE10000), size: 27),
                        SizedBox(width: 3.0),
                        Text(
                          'Dibatalkan',
                          style: TextStyle(
                              fontSize: 20.0, color: Color(0xFFFE10000)),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
