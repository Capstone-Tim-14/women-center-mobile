import 'package:flutter/material.dart';
import 'package:women_center_mobile/View/profil_page/favorit/artikel_favorit.dart';
import 'package:women_center_mobile/View/profil_page/favorit/karier_favorit.dart';
import 'package:women_center_mobile/View/profil_page/favorit/konselor_favorit.dart';

class FavoritAll extends StatelessWidget {
  const FavoritAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(9),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Konselor',
              style: TextStyle(fontFamily: 'Raleway', fontSize: 17),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 8),
            // KonselorFav(),
            SizedBox(height: 8),
            Text(
              'Artikel',
              style: TextStyle(fontFamily: 'Raleway', fontSize: 17),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 8),
            ArtikelFav(),
            Text(
              'Karir',
              style: TextStyle(fontFamily: 'Raleway', fontSize: 17),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 8),
            KarirFav()
          ],
        ),
      ),
    );
  }
}
