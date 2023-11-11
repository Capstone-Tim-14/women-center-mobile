import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class konseling_pilihan_konselor_2 extends StatelessWidget {
  const konseling_pilihan_konselor_2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Project'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return const CardItem();
        },
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: Image.asset('assets/gambar.jpg'),
        title: const Text('Judul'),
        subtitle: const Row(
          children: [
            Text('Subtitle Kiri'),
            Spacer(),
            Text('Subtitle Kanan'),
          ],
        ),
      ),
    );
  }
}

class StarRating extends StatelessWidget {
  const StarRating({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterRatingBar(
      initialRating: 4.5,
      fillColor: Colors.amber,
      borderColor: Colors.amber,
      allowHalfRating: true,
      onRatingUpdate: (rating) {
        // Handle ketika rating berubah
      },
    );
  }
}
