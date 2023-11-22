import 'package:flutter/material.dart';
import 'package:women_center_mobile/Models/artikel_model/artikel_model.dart';
import 'package:women_center_mobile/View/artikel/artikel_widget.dart';

class Artikel extends StatelessWidget {
  const Artikel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      List<ArtikelModel> artikelList = [
    ArtikelModel(
      "assets/images/artikel.png",
      "Nama Artikel 1",
      "Waktu Artikel 1",
      "Keterangan Artikel 1",
    ),
    ArtikelModel(
      "assets/images/artikel2.png",
      "Nama Artikel 2",
      "Waktu Artikel 2",
      "Keterangan Artikel 2",
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
