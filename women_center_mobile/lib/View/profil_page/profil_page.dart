import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(size.width / 2, size.height, size.width, size.height - 50);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class ProfilPage extends StatefulWidget {
  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  bool isNotificationEnabled = true;
  Color iconColor = const Color(0xFFF4518D);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFDCEDF),
        toolbarHeight: 80,
        leading: 
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0, right: 16.0, left: 4.0),
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
          padding: const EdgeInsets.only(bottom: 10.0, right: 16.0, left: 3.0),
              child: Text(
                'Profil',
                style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none_outlined), // Ganti dengan ikon notifikasi yang diinginkan
            onPressed: () {
              // Aksi yang ingin diambil ketika tombol notifikasi ditekan
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ClipPath(
            clipper: CustomShapeClipper(),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.24,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Color(0xFFFDCEDF), Color(0xFFFDCEDF)],
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/Ellipse.png'),
                      radius: 50,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Sherly Prameswari',
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'sherly.prameswari@gmail.com',
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
         Align(
  alignment: Alignment.center,
  child: Transform.translate(
    offset: Offset(0.0, -20.0),
    child: Padding(
      padding: EdgeInsets.only(top: 1),
      child: Container(
        margin: EdgeInsets.only(top: 1.0, bottom: 0.0),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.pink,
            onPrimary: Colors.white,
          ),
          child: Text('Edit Profil'),
        ),
      ),
    ),
  ),
),

          Column(
  children: [
    Card(
  margin: EdgeInsets.only(top: 1.0, bottom: 3.0, right: 16.0, left: 16.0),
  child: Container(
    color: Color(0xFFFCFCFC), // Ganti dengan warna yang diinginkan
    padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
    child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildOption(context, Icons.history, 'Riwayat Konseling', '/riwayat'),
            buildOption(context, CupertinoIcons.bell, 'Notifikasi', '/notifikasi'),
            buildOption(context, CupertinoIcons.checkmark_shield, 'Pengaturan Privasi', '/pengaturan'),
            buildOption(context, Icons.language, 'Bahasa', '/bahasa'),
            buildOption(context, Icons.favorite_outline, 'Favorit', '/favorit'),
          ],
        ),
      ),
    ),
    Card(
      margin: EdgeInsets.only(top: 1.0, bottom: 3.0, right: 16.0, left: 16.0), 
      child: Container(
    color: Color(0xFFFCFCFC),
        padding: EdgeInsets.only(top: 2.0, bottom: 2.0, right: 16.0, left: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildOption(context, Icons.feedback_outlined, 'Tentang Kami', '/tentang'),
            buildOption(context, Icons.live_help_outlined, 'Bantuan dan FAQ', '/bantuan'),
            buildOption(context, Icons.headset_mic_outlined, 'Layanan Pelanggan', '/layanan'),
          ],
        ),
      ),
    ),
  Card(
      margin: EdgeInsets.only(top: 2.0, bottom: 3.0, right: 16.0, left: 16.0), 
      child: Container(
    color: Color(0xFFFCFCFC),
        padding: EdgeInsets.only(top: 2.0, bottom: 2.0, right: 16.0, left: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildOption(context, Icons.logout_outlined, 'Keluar', '/favorit'),
          ],
        ),
      ),
    ),
  ],
),
        ],
      ),
      ),
    );
  }

  Widget buildOption(BuildContext context, IconData icon, String label, String route) {
  return InkWell(
    onTap: () {
      if (route == '/notifikasi') {
        // Tambahkan aksi untuk menangani ketika bagian notifikasi ditekan
        // Anda dapat menampilkan dialog atau halaman pengaturan notifikasi di sini
      } else {
        Navigator.pushNamed(context, route);
      }
    },
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: iconColor,
          ),
          SizedBox(width: 16.0),
          Text(label),
          if (route == '/notifikasi') ...[
            Spacer(),
            Switch(
  value: isNotificationEnabled,
  onChanged: (value) {
    setState(() {
      isNotificationEnabled = value;
    });
  },
  activeTrackColor: Color(0xFFF4518D), // Warna track switch saat aktif
  activeColor: Colors.white, // Warna switch saat aktif
),
          ],
        ],
      ),
    ),
  );
}
}