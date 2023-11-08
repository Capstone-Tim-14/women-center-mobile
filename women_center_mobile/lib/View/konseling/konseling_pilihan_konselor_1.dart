//PUNYA David Liem

import 'package:flutter/material.dart';

class konseling_pilihan_konselor_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Center(
          child: Text(
            "Konseling",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.grey[200], // Warna latar belakang abu-abu
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Cari nama psikolog",
                  prefixIcon: Icon(
                    Icons.search, // Icon di dalam TextField
                    color: Color(0xFF979797), // Warna ikon
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.all(10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none, // Hapus outline
                  ),
                ),
              ),
            ),
            SizedBox(width: 15.0), // Jarak antara ikon dan TextField
            InkWell(
              onTap: () {
                // Tambahkan logika ketika tombol ditekan di sini
              },
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Icon(
                  Icons.filter_list, // Icon di sebelah kanan search bar
                  color: Colors.black, // Warna ikon
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
