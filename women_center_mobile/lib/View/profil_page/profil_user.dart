import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFDCEDF),
        toolbarHeight: 96,
        leading: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
        ),
        title: Center(
          child: Align(
            alignment: Alignment(-0.22, 0),
            child: Transform.translate(
              offset: Offset(0.0, -12.0),
              child: Text(
                'Profil',
                style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ClipPath(
            clipper: CustomShapeClipper(),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.25,
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
                    padding: EdgeInsets.only(top: 6),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/Ellipse.png'),
                      radius: 55,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Sherly Prameswari',
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'sherly.prameswari@gmail.com',
                    style: GoogleFonts.roboto(
                      fontSize: 16,
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
        margin: EdgeInsets.only(top: 1.0, bottom: 5.0, right: 10.0, left: 10.0),
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
      margin: EdgeInsets.only(top: 10.0, bottom: 10.0, right: 16.0, left: 16.0), // Sesuaikan nilai margin sesuai kebutuhan
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildOption(context, Icons.home, 'Beranda', '/beranda'),
            buildOption(context, Icons.person, 'Profil', '/profil'),
            buildOption(context, Icons.settings, 'Pengaturan', '/pengaturan'),
            buildOption(context, Icons.notifications, 'Notifikasi', '/notifikasi'),
            buildOption(context, Icons.exit_to_app, 'Keluar', '/keluar'),
          ],
        ),
      ),
    ),
    Card(
      margin: EdgeInsets.only(top: 10.0, bottom: 10.0, right: 16.0, left: 16.0), 
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildOption(context, Icons.star, 'Favorit', '/favorit'),
            buildOption(context, Icons.info, 'Tentang Kami', '/tentang'),
          ],
        ),
      ),
    ),
  ],
),
        ],
      ),
    );
  }

  Widget buildOption(BuildContext context, IconData icon, String label, String route) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            Icon(icon),
            SizedBox(width: 16.0),
            Text(label),
          ],
        ),
      ),
    );
  }
}