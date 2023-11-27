import 'package:flutter/material.dart';
import 'package:women_center_mobile/Models/source/dummy_artikel.dart';

class Artikel2 extends StatelessWidget {
  const Artikel2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Artikel"),
        backgroundColor: Color(0XFFFDCEDF),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text("Tanda Kekerasan Seksual pada Anak: Wajib Dikenali!"),
          Row(
            children: [
              // Image.network(DummyArtikel.artikelUntukmu.thumbnail),
              Text(DummyArtikel.artikelUntukmu.author.name),
              Text(DummyArtikel.artikelUntukmu.formatJam()),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child:
                IconButton(icon: const Icon(Icons.bookmark_outline), onPressed: () {}),
          ),
          Image.network(DummyArtikel.artikelUntukmu.thumbnail),
          Text(DummyArtikel.artikelUntukmu.content)
        ],
      ),
    );
  }
}
