import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
            judul: 'Judul 1',
            subtitleKiri: 'Subtitle Kiri 1',
            subtitleKanan: 'Subtitle Kanan 1',
            initialRating: 4.5,
            lokasi: 'Lokasi 1',
          ),
          CardData(
            judul: 'Judul 2',
            subtitleKiri: 'Subtitle Kiri 2',
            subtitleKanan: 'Subtitle Kanan 2',
            initialRating: 3.5,
            lokasi: 'Lokasi 2',
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
  final double initialRating;
  final String lokasi;

  const CardData({
    Key? key,
    required this.judul,
    required this.subtitleKiri,
    required this.subtitleKanan,
    required this.initialRating,
    required this.lokasi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: Image.asset('images/XRamadhann.png'),
        title: Text(judul),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(subtitleKiri),
                const SizedBox(width: 50),
                Text(subtitleKanan),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    RatingBar.builder(
                      initialRating: initialRating,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 15,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                    const SizedBox(width: 5),
                    Text('($initialRating)'),
                  ],
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Row(
                    children: [
                      const Icon(Icons.location_on,
                          color: Colors.blue, size: 20),
                      const SizedBox(width: 8),
                      Text(lokasi),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        onTap: () {},
      ),
    );
  }
}
