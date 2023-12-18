import 'package:flutter/material.dart';

class RiwayatKonselingSelesai extends StatefulWidget {
  @override
  _RiwayatKonselingSelesaiState createState() =>
      _RiwayatKonselingSelesaiState();
}

class _RiwayatKonselingSelesaiState extends State<RiwayatKonselingSelesai> {
  @override
  Widget build(BuildContext context) {
    return Card(
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
                        'Assets/images/riwayatselesai.png',
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
                          'Krishna Barbe, M.Psi., Psikolog',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Raleway'),
                        ),
                        Text(
                          'Psikolog • Universitas Indonesia',
                          style: TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 16.0,
                              color: Color(0xFFF4518D)),
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
                      '06 Oktober 2023',
                      style: TextStyle(fontSize: 16.0, fontFamily: 'Raleway'),
                    ),
                    SizedBox(width: 60.0),
                    Icon(Icons.schedule, color: Colors.black),
                    SizedBox(width: 5),
                    Text(
                      '09:00-11:00',
                      style: TextStyle(fontSize: 16.0, fontFamily: 'Raleway'),
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
                    Icon(Icons.check_circle,
                        color: Colors.green[600], size: 27),
                    SizedBox(width: 3.0),
                    Text('Selesai',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.green[600],
                            fontFamily: 'Raleway')),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
