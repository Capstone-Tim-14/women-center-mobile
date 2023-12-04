//create by rafi taufiqurahman

import 'package:flutter/material.dart';

void main() {
  runApp(ArtikelFavorit());
}

class ArtikelFavorit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFF9F5F6),
          elevation: 0,
          title: Text('Artikel Favorit',
              style: TextStyle(
                color: Color(0xFF0B0B0B),
                fontSize: 16,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w600,
                height: 0,
              )),
          centerTitle: true, // Judul app bar
          leading: IconButton(
            // Tombol kembali di sebelah kiri
            icon: Icon(Icons.arrow_back), color: Colors.black,
            onPressed: () {
              // Aksi ketika tombol kembali ditekan
              // Misalnya, kembali ke layar sebelumnya
              // Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: Text('Isi konten artikel favorit di sini'),
        ),
      ),
    );
  }
}
