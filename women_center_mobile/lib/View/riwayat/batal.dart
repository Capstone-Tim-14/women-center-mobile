import 'package:flutter/material.dart';

class RiwayatBatal extends StatefulWidget {
  @override
  _RiwayatBatalState createState() => _RiwayatBatalState();
}

class _RiwayatBatalState extends State<RiwayatBatal> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {

          },
        ),
        title: Center(
          child: Text(
            "Riwayat Konseling",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        
      ),
    );
  }
}
