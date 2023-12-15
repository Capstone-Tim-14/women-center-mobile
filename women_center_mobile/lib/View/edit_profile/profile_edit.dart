import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:women_center_mobile/View/edit_profile/edit_form.dart';
import 'package:women_center_mobile/ViewModel/profie_edit/profile_edit.dart';
import 'dart:ui';

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

class ProfileEdit extends StatefulWidget {
  @override
  _ProfileEditState createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _fullnameController = TextEditingController();
  TextEditingController _firstnameController = TextEditingController();
  TextEditingController _lastnameController = TextEditingController();
  TextEditingController myController = TextEditingController();
  DateTime _tanggalController = DateTime.now();

  

  Color iconColor = const Color(0xFFF4518D);
  final ApiProfil _apiProfil = ApiProfil();
  Map<String, dynamic> _userProfile = {};

  @override
  void initState() {
    super.initState();
    _fetchUserProfile();
  }

  Future<void> _fetchUserProfile() async {
    try {
      final response = await _apiProfil.getUserProfile();
      print('Profile Picture URL: ${_userProfile['profile_picture']}');
      setState(() {
        _userProfile = response['data'];
        print('userprofile $_userProfile');
      });
    } catch (error) {
      print('Error fetching user profile: $error');
    }
  }

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
                .notifications_none_outlined), // Ganti dengan ikon notifikasi yang diinginkan
            onPressed: () {
              // Aksi yang ingin diambil ketika tombol notifikasi ditekan
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
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
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 0),
                          child: ClipOval(
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage: NetworkImage(
                                _userProfile['profile_picture']?.toString() ??
                                    '',
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 5,
                          right: 5,
                          child: InkWell(
                            onTap: () {
                              // Aksi yang ingin diambil ketika lingkaran edit ditekan
                            },
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(
                                    0xFFFDCEDF), // Ganti dengan warna yang diinginkan
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size:
                                      16, // Ganti dengan ukuran ikon yang diinginkan
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(_userProfile['full_name'] ?? 'User Name'),
                    Text(_userProfile['email'] ?? 'exam@ple.com'),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              padding:
                  EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  TextFormField(
                    controller: myController,
                    // initialValue: _userProfile['email'],
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.pink),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.pink),
                      ),
                    ),
                  ),
                ],
              ),
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
                      onPressed: () {
                        // Handle button press, you can access the form data using
                        // _usernameController.text, _firstnameController.text, etc.
                      },
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
      ),
    );
  }
}
