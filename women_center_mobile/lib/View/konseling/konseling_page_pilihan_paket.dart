import 'package:flutter/material.dart';

class PilihanPaket extends StatelessWidget {
  const PilihanPaket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Paket(),
    );
  }
}

class Paket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF9F5F6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Card(
              elevation: 5.0,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Pilih Paket Anda!",
                  style: TextStyle(
                    color: Color(0xFF1F1F1F),
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  ),
                ),
              ),
            ),
          ),
         Center(
            child: Card(
              elevation: 5.0,),
         ),
        ],
      ),
    );
  }
}




