import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:women_center_mobile/View/bottomnavigationbar/bottom_navigation_bar.dart';
import 'package:women_center_mobile/View/edit_profile/edit_form.dart';
import 'package:women_center_mobile/View/homepage/notifikasi/homepage_notifikasi.dart';
import 'package:women_center_mobile/View/homepage/notifikasi/homepage_notifikasi_3.dart';

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 50);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool isNotificationEnabled = true;
  Color iconColor = const Color(0xFFF4518D);
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFDCEDF),
        toolbarHeight: 80,
        leading: Padding(
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
              padding:
                  const EdgeInsets.only(bottom: 10.0, right: 16.0, left: 3.0),
              child: Text(
                'Edit Profil',
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
            icon: Icon(Icons
                .ios_share_rounded), // Ganti dengan ikon notifikasi yang diinginkan
            onPressed: () {
              // Aksi yang ingin diambil ketika tombol notifikasi ditekan
            },
          ),
        ],
      ),
      body: ListView(
        children: [
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
                      backgroundImage: AssetImage('Assets/images/profile.png'),
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
          Card(
            margin:
                EdgeInsets.only(top: 1.0, bottom: 3.0, right: 16.0, left: 16.0),
            color: Color.fromARGB(255, 255, 255, 255),
            child: MyForm(),
          ),
          SizedBox(height: 30),
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
                    child: Text('Simpan Perubahan'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: (index) {
          setState(() {
            _selectedIndex = index;
            if (_selectedIndex == 0) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomepageNotifikasi()));
            } else if (_selectedIndex == 1) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomepageNotifikasi3()));
            }
          });
        },
      ),
    );
  }
}
