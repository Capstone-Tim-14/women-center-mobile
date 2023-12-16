import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:women_center_mobile/ViewModel/profie_edit/profile_edit.dart';
import 'package:intl/intl.dart';

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

class EditDataProfile extends StatefulWidget {
  @override
  _EditDataProfileState createState() => _EditDataProfileState();
}

class _EditDataProfileState extends State<EditDataProfile> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _birthdayController = TextEditingController();

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
      setState(() {
        _userProfile = response['data'];

        // Set nilai awal pada controller berdasarkan data yang diambil
        _usernameController.text = _userProfile['username'] ?? '';
        _fullNameController.text = _userProfile['full_name'] ?? '';
        _emailController.text = _userProfile['email'] ?? '';
        _birthdayController.text = _userProfile['birthday'] ?? '';
      });
    } catch (error) {
      print('Error fetching user profile: $error');
    }
  }

  Future<void> _showDatePicker() async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (selectedDate != null) {
      String formattedDate = DateFormat('yyyy-MM-dd').format(selectedDate);
      setState(() {
        _birthdayController.text = formattedDate;
      });
    }
  }

  Future<void> _saveChanges() async {
    print('update data');
    Map<String, dynamic> updatedData = {
      'username': _usernameController.text,
      'full_name': _fullNameController.text,
      'email': _emailController.text,
      'birthday': _birthdayController.text,
    };
    print('update data2');
    await _apiProfil.updateUserProfile(updatedData);
    print('update data 3');
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
            onPressed: () {
              Navigator.pop(context);
            },
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
                .ios_share_outlined), // Ganti dengan ikon notifikasi yang diinginkan
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //-------------------- USERNAME--------------------
                      Text(
                        'Username:',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        width: 357,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.pink),
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        child: TextField(
                          controller: _usernameController,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                          onChanged: (value) {
                            // Handle perubahan teks pada username
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none, // hilangkan border
                          ),
                        ),
                      ),
                      //--------------------FULL NAME------------------
                      SizedBox(height: 15),
                      Text(
                        'Full Name:',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        width: 357,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.pink),
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        child: TextField(
                          controller: _fullNameController,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                          onChanged: (value) {
                            // Handle perubahan teks pada full name
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none, // hilangkan border
                          ),
                        ),
                      ),
                      //--------------------EMAIL----------------
                      SizedBox(height: 15),
                      Text(
                        'Email:',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        width: 357,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.pink),
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        child: TextField(
                          controller: _emailController,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                          onChanged: (value) {
                            // Handle perubahan teks pada email
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none, // hilangkan border
                          ),
                        ),
                      ),
                      //-------------BIRTHDAY----------
                      SizedBox(height: 15),
                      Text(
                        'Birthday:',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        width: 357,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.pink),
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                controller: _birthdayController,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                onChanged: (value) {
                                  // Handle perubahan teks pada birthday
                                },
                                decoration: InputDecoration(
                                  border: InputBorder.none, // hilangkan border
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: _showDatePicker,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                child: Icon(
                                  Icons.calendar_today,
                                  color: Colors.pink,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
                        print('cek tombol');
                        _saveChanges();
                        print('cek tombol2');
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
