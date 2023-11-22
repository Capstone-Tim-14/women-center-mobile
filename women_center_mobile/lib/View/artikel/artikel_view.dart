import 'package:flutter/material.dart';
import 'package:women_center_mobile/Models/artikel_model/artikel_model.dart';
import 'package:women_center_mobile/View/artikel/artikel_widget.dart';

class Artikel extends StatelessWidget {
  const Artikel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ArtikelModel> artikelList = [
      ArtikelModel(
        "assets/images/artikel2.png",
        "Dian Safitri",
        "2 Jam yang lalu",
        "Tanda Kekerasan Seksual pada Anak: Wajib Dikenali",
      ),
      ArtikelModel(
        "assets/images/artikel1.png",
        "Syifa Nur Rahmawati",
        "1 hari yang lalu",
        "Jadi Wanita Karir, Gimana Cara Hadapi Stres?",
      ),
      // Add more ArtikelModel objects as needed
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title: Center(child: Text('Artikel')),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              ArtikelWidget(artikelList: artikelList),
            ],
          ),
        ),
      ),
    );
  }
}
