import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'My App Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, top: 2.0),
        child: Text(
          'Women Center',
          textAlign: TextAlign.center,
          style: GoogleFonts.raleway(
            fontSize: 45,
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2
              ..color = Color(0xFFF2BED1), // The desired stroke color
          ),
        ),
      ),
    );
  }
}

class WomenCenterAdalahSebuahOrganisasiYangBerfokusPadaPemberdayaanWanitaUntukMeraihPotensiTerbaikDanMenciptakanPerubahanPositifDalamHidupMerekaWomenCenterInginMembangunSebuahPlatformOnlineYangBerfungsiSebagaiPusatBantuanUntukWanitaDanMenyediakanRuangYangAmanDanMendukungBagiWanitaUntukMengaksesInformasiSumberDayaDanDukunganTerkaitPertumbuhanPribadiPengembanganProfesionalDanKesejahteraanMereka
    extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        width: 312,
        height: 142,
        child: Text(
          'Women Center adalah sebuah organisasi yang berfokus pada pemberdayaan wanita untuk meraih potensi terbaik dan menciptakan perubahan positif dalam hidup mereka. Women Center ingin membangun sebuah platform online yang berfungsi sebagai pusat bantuan untuk wanita dan menyediakan ruang yang aman dan mendukung bagi wanita untuk mengakses informasi, sumber daya, dan dukungan terkait pertumbuhan pribadi, pengembangan profesional, dan kesejahteraan mereka.',
          style: TextStyle(
            color: Color(0xFF1F1F1F),
            fontSize: 12,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w400,
            height: 0.14,
          ),
        ),
      ),
    ]);
  }
}
