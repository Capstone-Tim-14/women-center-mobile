import 'package:flutter/material.dart';

class HomepageNotifikasi extends StatefulWidget {
  const HomepageNotifikasi({super.key});

  @override
  State<HomepageNotifikasi> createState() => _HomepageNotifikasiState();
}

class _HomepageNotifikasiState extends State<HomepageNotifikasi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Stack(
          children: <Widget>[
            //Diisi sesuai tugas, jangan lupa biar ga conflict kabarin kalau misal mau nambahin sesuatu
          ],
        ),
      ),
    );
  }
}
