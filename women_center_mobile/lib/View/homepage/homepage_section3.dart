//punya om David
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home3',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home3'),
        ),
        body: Center(
          child: Card(
            elevation: 20,
            margin: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0), // Mengatur sudut kartu
            ),
            color: Colors.pink,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: const Text('Rekomendasi Paket', style: TextStyle(fontSize: 20, color: Colors.white),),
                ),
                SizedBox(height: 8),
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20), // Mengatur sudut atas kiri
                    topRight: Radius.circular(20), // Mengatur sudut atas kanan
                  ),
                  child: Image.asset(
                    'Assets/images/home_3.jpg', // Ganti dengan path gambar Anda
                    width: 328, // Sesuaikan lebar gambar sesuai kebutuhan
                    height: 212, // Sesuaikan tinggi gambar sesuai kebutuhan
                  ),
                ),
                SizedBox(height: 8),
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Isi konten di sini',
                      style: TextStyle(color: Colors.black), // Ganti dengan konten yang diinginkan
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
