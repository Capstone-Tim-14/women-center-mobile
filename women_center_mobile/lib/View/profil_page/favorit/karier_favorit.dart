import 'package:flutter/material.dart';

class KarirFav extends StatelessWidget {
  const KarirFav({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'Assets/images/career1.png',
                width: 110,
                height: 110, // Sesuaikan dengan tinggi gambar yang diinginkan
              ),
              // Widget teks pada sisi kanan
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Engineer',
                          style: TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.pinkAccent.shade200)),
                      Text(
                        'PT OS SELNAJAYA INDONESIA',
                        style: TextStyle(fontFamily: 'Raleway', fontSize: 17),
                      ),
                      Text('Jakarta, Indonesia (On Site)',
                          style:
                              TextStyle(fontFamily: 'Raleway', fontSize: 17)),
                      Text('23 Jun 2023',
                          style: TextStyle(fontFamily: 'Raleway', fontSize: 17))
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
