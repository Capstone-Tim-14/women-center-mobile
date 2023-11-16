import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final List<String> topics = [
    'Hubungan dan keluarga',
    'Seni dan Kreativitas',
    'Gaya Hidup Sehat',
    'Program Kewirausahaan',
    'Berita Wanita',
    'Kesejahteraan Mental',
    'Pertumbuhan Pribadi',
    'Pengembangan Hubungan',
    'Pengembangan Karier',
    'Pengalaman Hubungan',
    'Teknologi dan Sains',
    'Inspirasi dan Kisa Sukses',
  ];

  Set<String> selectedTopics = Set();

  @override
  Widget build(BuildContext context) {
    final cardWidth = MediaQuery.of(context).size.width / 3;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              'Assets/images/onboarding.png',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            Positioned(
              top: 74,
              left: 273.5,
              child: Text(
                'Lanjutkan >>',
                style: GoogleFonts.raleway(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Positioned(
              top: 170,
              left: 16,
              child: Text(
                'Hallo kak, Sherly Prameswari',
                style: GoogleFonts.raleway(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 6),
            Positioned(
              top: 196,
              left: 16,
              child: Text(
                'Pilih topik favoritmu!!!',
                style: GoogleFonts.raleway(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Positioned(
              top: 231,
              left: 16.5,
              right: 16,
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: [
                        for (int i = 0; i < topics.length && i < 6; i += 3)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              for (int j = i; j < i + 3 && j < topics.length && j < 6; j++)
                                _buildSingleCard(topics[j], cardWidth),
                            ],
                          ),
                        for (int i = 6; i < topics.length && i < 12; i += 2)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              for (int j = i; j < i + 2 && j < topics.length && j < 12; j++)
                                _buildSingleCard(topics[j], cardWidth),
                            ],
                          ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 617.5,
              left: 112,
              child: Text(
                'WOMAN',
                style: GoogleFonts.raleway(
                  fontSize: 48,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFDCEDF),
                  letterSpacing: 0.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 616,
              left: 105,
              child: Text(
                'WOMAN',
                style: GoogleFonts.raleway(
                  fontSize: 48,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFF4518D),
                  letterSpacing: 0.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 661.5,
              left: 142,
              child: Text(
                'CENTER',
                style: GoogleFonts.raleway(
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFDCEDF),
                  letterSpacing: 0.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 660,
              left: 135,
              child: Text(
                'CENTER',
                style: GoogleFonts.raleway(
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFF4518D),
                  letterSpacing: 0.0,
                ),
                textAlign: TextAlign.center,
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildSingleCard(String topic, double cardWidth) {
    final cardHeight = 65.0;
    final cardMargin = EdgeInsets.only(left: 4, right: 4, bottom: 4);

    final isSelected = selectedTopics.contains(topic);

    return GestureDetector(
      onTap: () {
        setState(() {
          if (isSelected) {
            selectedTopics.remove(topic);
          } else {
            selectedTopics.add(topic);
          }
        });
      },
      child: Container(
        width: cardWidth,
        height: cardHeight,
        margin: cardMargin,
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFFF4518D) : Color(0xFFF8E8EE),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: isSelected ? Color(0xFFF4518D) : Color(0xFFF2BED1),
            width: 2,
          ),
        ),
        // padding: cardPadding,
        child: Center(
          child: Text(
            topic,
            style: GoogleFonts.roboto(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: isSelected ? Colors.white : Color(0xFF000000),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

//   Widget _buildSingleCard(String topic) {
//   final cardPadding = EdgeInsets.all(10);
//   final cardMargin = EdgeInsets.only(bottom: 4, right: 4);
  
//   final random = Random();
//   final cardWidth = 85 + random.nextInt(100).toDouble(); // Ukuran acak antara 100 dan 200
  
//   final isSelected = selectedTopics.contains(topic);

//   return GestureDetector(
//     onTap: () {
//       setState(() {
//         if (isSelected) {
//           selectedTopics.remove(topic);
//         } else {
//           selectedTopics.add(topic);
//         }
//       });
//     },
//     child: Container(
//       width: cardWidth,
//       margin: cardMargin,
//       height: 85.0,
//       decoration: BoxDecoration(
//         color: isSelected ? Color(0xFFF4518D) : Color(0xFFF8E8EE),
//         borderRadius: BorderRadius.circular(10),
//         border: Border.all(
//           color: isSelected ? Color(0xFFF4518D) : Color(0xFFF2BED1),
//           width: 2,
//         ),
//       ),
//       padding: cardPadding,
//       child: Center(
//         child: Text(
//           topic,
//           style: GoogleFonts.roboto(
//             fontSize: 12,
//             fontWeight: FontWeight.w400,
//             color: isSelected ? Colors.white : Color(0xFF000000),
//           ),
//           textAlign: TextAlign.center,
//         ),
//       ),
//     ),
//   );
// }
}