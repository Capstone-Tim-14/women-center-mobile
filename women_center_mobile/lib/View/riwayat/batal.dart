import 'package:flutter/material.dart';

class RiwayatBatal extends StatefulWidget {
  @override
  _RiwayatBatalState createState() => _RiwayatBatalState();
}

class _RiwayatBatalState extends State<RiwayatBatal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Center(
          child: Text(
            "Riwayat Konseling",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: [
                      SizedBox(width: 8),
                      Text(
                        'Dibatalkan',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 5),
                      InkWell(
                        onTap: () {
                          // Handle ketika ikon ditekan
                        },
                        child: Icon(Icons.keyboard_arrow_down),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 218),
                IconButton(
                  onPressed: () {
                    // Handle ketika ikon add ditekan
                  },
                  icon: Icon(Icons.swap_vert),
                ),
              ],
            )
          ],
        ),
        
      ),
    );
  }
}
