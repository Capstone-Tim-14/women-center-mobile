import 'package:flutter/material.dart';

class ArtikelFav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(
          child: Card(
            child: Row(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 35),
                Container(
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Julia Amailia',
                            style: TextStyle(
                              color: Color(0xFFF4518D),
                              fontSize: 12,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '• 20 Oktober 2023',
                            style: TextStyle(
                              color: Color(0xFF393938),
                              fontSize: 12,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w400,
                              height: 0.14,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 208,
                        height: 38,
                        child: Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            'Fakta Depresi di Malam Hari yang Perlu Kamu Tahu',
                            style: TextStyle(
                              color: Color(0xFF141514),
                              fontSize: 13,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 50),
                Container(
                  width: 76,
                  height: 93,
                  decoration: const ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://cdn1-production-images-kly.akamaized.net/x6EavcGM-jZHyB8A6GFBBoLGBRg=/0x322:5472x3406/1360x766/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/2851623/original/001553100_1562917858-shutterstock_797685025.jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 14,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
