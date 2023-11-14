import 'package:flutter/material.dart';
import 'package:women_center_mobile/Models/paket.dart';

class PilihanPaket extends StatelessWidget {
  const PilihanPaket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F5F6),
      appBar: AppBar(
        title: Text("Konseling"),
        centerTitle: true,
        backgroundColor: Color(0xFFFDCEDF),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            //tombol kembali mengarah ke home
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pilih Paket Anda!",
                      style: TextStyle(
                        color: Color(0xFF1F1F1F),
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Kami memiliki paket konsultasi yang sesuai dengan setiap kebutuhan. Mulailah perubahan hari ini.",
                      style: TextStyle(
                        color: Color(0xFF1F1F1F),
                        fontSize: 12,
                      ),
                    ),
                    Paket(
                      model: PaketModel(
                        "Paket Voice Call",
                        3,
                        ["1", "2", "3"],
                        350000,
                        250000,
                      ),
                    ),
                    Paket(
                      model: PaketModel(
                        "Paket Voice Call",
                        3,
                        ["1", "2", "3"],
                        350000,
                        250000,
                      ),
                    ),
                    Paket(
                      model: PaketModel(
                        "Paket Voice Call",
                        3,
                        ["1", "2", "3"],
                        350000,
                        250000,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //bottom Navigation Barr
        ],
      ),
    );
  }
}

class Paket extends StatelessWidget {
  final PaketModel model;

  const Paket({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Color(0xFFF4518D)),
          borderRadius: BorderRadius.circular(8)),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(model.judul),
          Text("${model.sesi}x Sesi"),
          ListView.builder(
            shrinkWrap: true,
            itemCount: model.daftar.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Icon(Icons.check_circle, color: Colors.green),
                  Text(model.daftar[index]),
                ],
              );
            },
          ),
          Divider(
            indent: 20,
            endIndent: 20,
          ),
          Text(
            "Rp.${model.hargaAsli.toString()}",
            style: TextStyle(decoration: TextDecoration.lineThrough),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Rp.${model.hargaDiskon.toString()}",
                style: TextStyle(color: Color(0xFFF4518D)),
              ),
              MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                color: Color(0xFFF4518D),
                child: Text("pesan"),
              )
            ],
          )
        ],
      ),
    );
  }
}


//t=apnggil font, textstyle, fontfamily