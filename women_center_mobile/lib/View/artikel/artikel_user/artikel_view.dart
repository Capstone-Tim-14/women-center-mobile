import 'package:flutter/material.dart';
import 'package:women_center_mobile/Models/artikel_model/artikel_model.dart';
import 'package:women_center_mobile/Models/source/dummy_artikel.dart';
import 'package:women_center_mobile/View/artikel/artikel_user/artikel_widget.dart';

class Artikel extends StatefulWidget {
  const Artikel({Key? key}) : super(key: key);

  @override
  _ArtikelState createState() => _ArtikelState();
}

class _ArtikelState extends State<Artikel> {
  List<ArtikelModel> artikelList = [
    DummyArtikel.artikelUntukmu,
    DummyArtikel.artikelUntukmu,
    // Add more ArtikelModel objects as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Artikel',
          style: TextStyle(
            color: Color(0xFF1F1F1F),
            fontSize: 16,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
        backgroundColor: const Color(0xFFFDCEDF),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              ArtikelWidget(artikelList: artikelList),
              // Tambahan widget lainnya jika diperlukan
            ],
          ),
        ),
      ),
    );
  }
}
