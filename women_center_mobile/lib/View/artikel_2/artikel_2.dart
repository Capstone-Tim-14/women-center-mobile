import 'package:flutter/material.dart';

class Artikel2 extends StatelessWidget {
  const Artikel2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Artikel"),
        backgroundColor: Color(0XFFFDCEDF), centerTitle: true,
      ),
      body: Column(
        children: [
          Text("Tanda Kekerasan Seksual pada Anak: Wajib Dikenali!"),
        ],
      ),
    );
  }
}