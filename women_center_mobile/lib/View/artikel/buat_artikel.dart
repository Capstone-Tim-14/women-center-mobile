import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:women_center_mobile/Models/artikel_model/buat_artikel_model.dart';
import 'package:women_center_mobile/ViewModel/artikel_view_model/buat_artikel_viewmodel.dart';

class buat_artikel extends StatefulWidget {
  @override
  _buat_artikelState createState() => _buat_artikelState();
}

class _buat_artikelState extends State<buat_artikel> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();
  final TextEditingController _thumbnailController = TextEditingController();
  Color _warna1 = Colors.white;
  Color _textColor1 = Colors.black;
  Color _warna2 = Colors.white;
  Color _textColor2 = Colors.black;
  Color _warna3 = Colors.white;
  Color _textColor3 = Colors.black;
  Color _warna4 = Colors.white;
  Color _textColor4 = Colors.black;
  Color _warna5 = Colors.white;
  Color _textColor5 = Colors.black;
  Color _warna6 = Colors.white;
  Color _textColor6 = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Center(
          child: Text(
            "Buat Artikel",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Judul Artikel',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 2),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.7),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3)
                    )
                  ]
                ),
                child: TextFormField(
                  controller: _titleController,
                  maxLines: null,
                  minLines: 1,
                  decoration: InputDecoration(
                    hintText: 'Ketik Judul artikel disini...',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Upload Foto',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 2),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.7),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3)
                    )
                  ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Widget untuk menampilkan gambar yang diunggah (jika ada)s
                    TextFormField(
                      readOnly: true,
                      controller: _thumbnailController, 
                      decoration: InputDecoration(
                        hintText: 'Upload foto di sini...',
                        suffixIcon: InkWell(
                          onTap: () {
                            // Panggil fungsi untuk membuka galeri dan memilih gambar
                            _pickImage();
                          },
                          child: Icon(
                            Icons.upload_file,
                            color: Color(0xFF979797),
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Isi Artikel',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 2),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.7),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    )
                  ],
                ),
                child: TextFormField(
                  controller: _contentController,
                  maxLines: null, // Atur nilai null agar widget dapat tumbuh sesuai kebutuhan
                  minLines: 1,    // Atur nilai minimum baris yang ditampilkan
                  decoration: InputDecoration(
                    hintText: 'Ketik Artikel Anda disini...',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 115),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Katgori', style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _warna1 = (_warna1 == Colors.white) ? const Color.fromRGBO(244, 81, 141, 1) : Colors.white;
                        _textColor1 = (_textColor1 == Colors.black) ? Colors.white : Colors.black; 
                      });
                    }, 
                    child: Text('Berita Wanita', style: TextStyle(color: _textColor1, fontSize: 14)),
                    style: ElevatedButton.styleFrom(primary: _warna1),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _warna2 = (_warna2 == Colors.white) ? const Color.fromRGBO(244, 81, 141, 1) : Colors.white;
                        _textColor2 = (_textColor2 == Colors.black) ? Colors.white : Colors.black; 
                      });
                    }, 
                    child: Text('Teknologi', style: TextStyle(color: _textColor2, fontSize: 14)),
                    style: ElevatedButton.styleFrom(primary: _warna2),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _warna3 = (_warna3 == Colors.white) ? const Color.fromRGBO(244, 81, 141, 1) : Colors.white;
                        _textColor3 = (_textColor3 == Colors.black) ? Colors.white : Colors.black; 
                      });
                    }, 
                    child: Text('Karier', style: TextStyle(color: _textColor3, fontSize: 14)),
                    style: ElevatedButton.styleFrom(primary: _warna3),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _warna4 = (_warna4 == Colors.white) ? const Color.fromRGBO(244, 81, 141, 1) : Colors.white;
                        _textColor4 = (_textColor4 == Colors.black) ? Colors.white : Colors.black; 
                      });
                    }, 
                    child: Text('Seni & Kreatifitas', style: TextStyle(color: _textColor4, fontSize: 14)),
                    style: ElevatedButton.styleFrom(primary: _warna4),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _warna5 = (_warna5 == Colors.white) ? const Color.fromRGBO(244, 81, 141, 1) : Colors.white;
                        _textColor5 = (_textColor5 == Colors.black) ? Colors.white : Colors.black; 
                      });
                    }, 
                    child: Text('Gaya hidup', style: TextStyle(color: _textColor5, fontSize: 14)),
                    style: ElevatedButton.styleFrom(primary: _warna5),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _warna6 = (_warna6 == Colors.white) ? const Color.fromRGBO(244, 81, 141, 1) : Colors.white;
                        _textColor6 = (_textColor6 == Colors.black) ? Colors.white : Colors.black; 
                      });
                    }, 
                    child: Text('Mental Health', style: TextStyle(color: _textColor6, fontSize: 14)),
                    style: ElevatedButton.styleFrom(primary: _warna6),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max, // Lebar maksimum
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        // Tindakan yang diambil saat tombol ditekan
                        _createArticle(context);
                      });
                    },
                    child: Text('Pilih Paket', style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(244, 81, 141, 1), // Warna latar belakang
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20), // Mengatur sudut tombol
                      ),
                      minimumSize: Size(double.infinity, 40), // Lebar maksimum dan tinggi tombol
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _pickImage() async {
    // Implementasi pembukaan galeri di sini
    // Pastikan untuk memperbarui nilai _thumbnailController dengan file yang dipilih
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );

    if (result != null && result.files.isNotEmpty) {
      setState(() {
        String fileName = result.files.first.name;
        _thumbnailController.text = fileName;
      });
    }
  }

  void _createArticle(BuildContext context) async {
    final articleViewModel = Provider.of<ArticleViewModel>(context, listen: false);
    
    // Validasi sederhana, pastikan semua field diisi
    if (_titleController.text.isNotEmpty &&
        _contentController.text.isNotEmpty &&
        _thumbnailController.text.isNotEmpty) {
      // Buat objek Article
      final newArticle = Article(
        title: _titleController.text,
        content: _contentController.text,
        thumbnail: _thumbnailController.text,
      );

      try {
        // Panggil fungsi createArticle dari viewModel
        await articleViewModel.createArticle(newArticle);

        // Artikel berhasil dibuat, mungkin Anda ingin menavigasi kembali atau melakukan tindakan lainnya
        Navigator.pop(context);

      } catch (error) {
        // Handle error jika ada kesalahan selama proses pembuatan artikel
        print('Error creating article: $error');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to create article. Please try again.'),
          ),
        );
      }
    } else {
      // Tampilkan pesan jika ada field yang belum diisi
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Tolong isi Semua colom'),
        ),
      );
    }
  }
}