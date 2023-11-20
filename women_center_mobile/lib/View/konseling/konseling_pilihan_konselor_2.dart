import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: KonselingPilihanKonselor2(),
    );
  }
}

class KonselingPilihanKonselor2 extends StatelessWidget {
  const KonselingPilihanKonselor2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Project'),
      ),
      body: const Column(
        children: [
          CardData(
            judul: 'Stenafie Russel, M.Psi., Psikolog',
            subtitleKiri: 'Psikolog',
            subtitleKanan: 'Universitas Indonesia',
            imagePath: 'Assets/images/konselor1.png',
            lokasi: 'Jakarta',
          ),
          CardData(
            judul: 'Stenafie Russel, M.Psi., Psikolog',
            subtitleKiri: 'Psikolog',
            subtitleKanan: 'Universitas Indonesia',
            imagePath: 'Assets/images/konselor2.png',
            lokasi: 'Jakarta',
          ),
        ],
      ),
    );
  }
}

class CardData extends StatelessWidget {
  final String judul;
  final String subtitleKiri;
  final String subtitleKanan;
  final String imagePath;
  final String lokasi;

  const CardData({
    Key? key,
    required this.judul,
    required this.subtitleKiri,
    required this.subtitleKanan,
    required this.imagePath,
    required this.lokasi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160, // Ketinggian Card
      child: Card(
        margin: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 110, // Ketinggian dan lebar Gambar
                width: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      judul,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            subtitleKiri,
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Text(
                          subtitleKanan,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: const Color.fromARGB(255, 159, 159, 159),
                          size: 20,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          lokasi,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
