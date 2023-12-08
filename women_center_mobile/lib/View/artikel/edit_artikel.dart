import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: buat_artikel(),
  ));
}

class buat_artikel extends StatefulWidget {
  @override
  _buat_artikelState createState() => _buat_artikelState();
}

class _buat_artikelState extends State<buat_artikel> {
  TextEditingController _judulController = TextEditingController();
  TextEditingController _isiController = TextEditingController();

  //list teks
  List<String> teksList = [
    'Teks pertama',
    'Teks kedua',
    'Teks ketiga',
  ];

  // Color _warna1 = Colors.white;
  // Color _textColor1 = Colors.black;
  // Color _warna2 = Colors.white;
  // Color _textColor2 = Colors.black;
  // Color _warna3 = Colors.white;
  // Color _textColor3 = Colors.black;
  // Color _warna4 = Colors.white;
  // Color _textColor4 = Colors.black;
  // Color _warna5 = Colors.white;
  // Color _textColor5 = Colors.black;
  // Color _warna6 = Colors.white;
  // Color _textColor6 = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        elevation: 0,
        title: const Text(
          'Edit Artikel',
          style: const TextStyle(
            fontFamily: "Roboto",
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xff0b0b0b),
            height: 20 / 14,
          ),
        ),
        centerTitle: true, // Judul app bar
        leading: IconButton(
          // Tombol kembali di sebelah kiri
          icon: const Icon(Icons.arrow_back), color: Colors.black,
          onPressed: () {
            // Aksi ketika tombol kembali ditekan
            // Misalnya, kembali ke layar sebelumnya
            // Navigator.pop(context);
          },
        ),
      ),
      // appBar: AppBar(
      //   backgroundColor: Colors.pink[100],
      //   leading: IconButton(
      //     icon: const Icon(Icons.arrow_back),
      //     color: Colors.black,
      //     onPressed: () {},
      //   ),
      //   title: const Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text(
      //         "Edit Artikel",
      //         style: TextStyle(
      //           color: Color(0xFF0B0B0B),
      //           fontSize: 14,
      //           // fontFamily: 'Roboto',
      //           fontWeight: FontWeight.w500,
      //           // height: 0.10,
      //           // letterSpacing: 0.14,
      //         ),
      //       ),
      //     ],
      //   ),
      //   centerTitle: true,
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          //.........................//
          child: Container(
            width: 365,
            height: 980,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Judul Artikel',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                const SizedBox(height: 4),
                Container(
                  width: 360,
                  height: 48,
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 16,
                    right: 10,
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3) // Perpindahan bayangan (x, y)
                          ),
                    ],
                  ),
                  child: TextFormField(
                    style: const TextStyle(
                      color: Color(0xFF1F1F1F),
                      fontSize: 14,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type here...',
                      hintStyle: TextStyle(
                        color: const Color(0xFF1F1F1F).withOpacity(0.5),
                        fontSize: 14,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Upload Foto',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Container(
                      width: 360,
                      height: 48,
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 16,
                        right: 10,
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 3) // Perpindahan bayangan (x, y)
                              ),
                        ],
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Foto.jpg',
                            style: TextStyle(
                              color: Color(0xFF1F1F1F),
                              fontSize: 14,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: 24,
                            height: 24,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 24,
                                  height: 24,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    // color: Colors
                                    //     .grey, // Ganti dengan atribut yang diperlukan
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: const Icon(
                                    Icons.upload_file,
                                    color: Colors
                                        .grey, // Ganti dengan warna yang sesuai
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 14),
                Container(
                  width: 360,
                  height: 540,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Isi Artikel',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Container(
                        width: 360,
                        height: 500,
                        padding: const EdgeInsets.only(
                          top: 25,
                          left: 16,
                          right: 10,
                          bottom: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 3) // Perpindahan bayangan (x, y)
                                ),
                          ],
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Cinta Beda Usia \n',
                              style: TextStyle(
                                color: Color(0xFF4B4B4B),
                                fontSize: 16,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              'hai selamat siang semunya. apa kabar hari ini? semoga sehat selalu',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Color(0xFF4B4B4B),
                                fontSize: 14,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w400,
                                // height: 0.11,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                const Text(
                  'Kategori',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TeksListWidget(),
                const SizedBox(
                  height: 17,
                ),
                GestureDetector(
                  onTap: () {
                    // Logika yang akan dijalankan ketika tombol ditekan
                    print('Tombol ditekan!');
                    // Tambahkan logika atau perintah lain sesuai kebutuhan
                  },
                  child: Container(
                    width: 360,
                    height: 31,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 105, vertical: 1),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF4518D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 7.5),
                          child: Text(
                            'Post',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              height: 0.15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TeksListWidget extends StatefulWidget {
  @override
  _TeksListWidgetState createState() => _TeksListWidgetState();
}

class _TeksListWidgetState extends State<TeksListWidget> {
  List<String> teksList = [
    'Teks 1',
    'Teks 2',
    'Teks 3',
    // ... tambahkan teks lainnya di sini
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.only(
                right: 10), // Sesuaikan dengan jarak yang diinginkan
            child: _buildColumn(teksList, Colors.red),
          ),
        ),
        SizedBox(
          width: 7,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
                right: 10), // Sesuaikan dengan jarak yang diinginkan
            child: _buildColumn(teksList, Colors.pink),
          ),
        ),
      ],
    );
  }

  Column _buildColumn(List<String> teksList, Color color) {
    return Column(
      children: List.generate(
        teksList.length,
        (index) {
          bool isTapped = false;

          return GestureDetector(
            onTap: () {
              setState(() {
                isTapped = !isTapped;
              });
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 17),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        isTapped = !isTapped;
                      });
                    },
                    child: Container(
                      width: 117,
                      height: 31,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color:
                            isTapped ? color : Color.fromARGB(255, 0, 255, 89),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 7),
                        child: Column(
                          children: [
                            Text(
                              teksList[index],
                              style: TextStyle(
                                color: isTapped
                                    ? Colors.white
                                    : const Color(0xFF636363),
                                fontSize: 14,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
