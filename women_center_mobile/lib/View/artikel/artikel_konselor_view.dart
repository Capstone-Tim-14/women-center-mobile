//create artikel konselor

import 'package:flutter/material.dart';
import 'artikel_konselor_widget.dart';
import 'dart:ui';

void main(List<String> args) {
  runApp(const artikelKonselor());
}

class artikelKonselor extends StatefulWidget {
  const artikelKonselor({super.key});

  @override
  State<artikelKonselor> createState() => _artikelKonselorState();
}

class _artikelKonselorState extends State<artikelKonselor> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[100],
          title: const Center(
              child: Text(
            'Artikel',
            style: TextStyle(
              color: Colors.black,
            ),
          )),
          automaticallyImplyLeading: false,
        ),
        body: const SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 17,
                ),
                Search(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
