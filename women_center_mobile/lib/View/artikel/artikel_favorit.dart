//create by rafi taufiqurahman

import 'package:flutter/material.dart';

void main() {
  runApp(ArtikelFavorit());
}

class ArtikelFavorit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFF9F5F6),
          elevation: 0,
          title: const Text('Favorit',
              style: TextStyle(
                color: Color(0xFF0B0B0B),
                fontSize: 16,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w600,
                height: 0,
              )),
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
        body: Center(
            child: Column(
          children: [Choice()],
        )),
      ),
    );
  }
}

// class Choice extends StatefulWidget {
//   @override
//   _ChoiceState createState() => _ChoiceState();
// }

// class _ChoiceState extends State<Choice> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         InkWell(
//           onTap: () {
//             setState(() {
//               //Mengubah status isChecked saat container diklik
//             });
//           },
//           child: Container(
//             width: 415,
//             height: 48,
//             padding: const EdgeInsets.symmetric(vertical: 12),
//             clipBehavior: Clip.antiAlias,
//             decoration:
//                 const BoxDecoration(color: Color.fromARGB(255, 5, 231, 118)),
//             child: Row(
//               mainAxisSize: MainAxisSize.min,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Row(
//                   mainAxisSize: MainAxisSize.min,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     const Padding(
//                       padding: EdgeInsets.only(left: 25),
//                       child: Text(
//                         'Artikel',
//                         style: TextStyle(
//                           color: Color(0xFF371B34),
//                           fontSize: 16,
//                           fontFamily: 'Raleway',
//                           fontWeight: FontWeight.w600,
//                           height: 0,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(width: 8),
//                   ],
//                 ),
//                 const SizedBox(width: 35),
//                 Container(
//                   width: 12,
//                   height: 16,
//                   clipBehavior: Clip.antiAlias,
//                   decoration: const BoxDecoration(),
//                   child: const Stack(children: []),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// import 'package:flutter/material.dart';/

class Choice extends StatefulWidget {
  @override
  _ChoiceState createState() => _ChoiceState();
}

class _ChoiceState extends State<Choice> {
  String dropdownValue = 'Semua'; // Nilai default dropdown

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 415,
          color: const Color(0xFFF9F5F6),
          child: DropdownButton<String>(
            dropdownColor: const Color(0xFFF9F5F6),
            value: dropdownValue,
            icon: const Icon(Icons.arrow_drop_down),
            iconSize: 24,
            elevation: 16,
            underline: Container(
              height: 2,
              color: const Color(0xFFF9F5F6),
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue =
                    newValue!; // Mengubah nilai dropdown saat dipilih
              });
            },
            items: <String>['Semua', 'Artikel', 'Konselor', 'Karier']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    value,
                    style: const TextStyle(
                      color: Color(0xFF371B34),
                      fontSize: 16,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        ContentBasedOnDropdown(
            dropdownValue), // Menampilkan konten berdasarkan nilai dropdown
      ],
    );
  }
}

class ContentBasedOnDropdown extends StatelessWidget {
  final String dropdownValue;

  ContentBasedOnDropdown(this.dropdownValue);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ArtikelFav(),
    );
  }
}

class ArtikelFav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Container(
          width: 335,
          height: 93,
          // padding: const EdgeInsets.symmetric(horizontal: 16),
          color: Color.fromARGB(255, 255, 255, 255),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: const Column(
                  // mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 18),
                          child: Text(
                            'Julia Amailia',
                            style: TextStyle(
                              color: Color(0xFFF4518D),
                              fontSize: 12,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 25),
                            child: Opacity(
                              opacity: 0.50,
                              child: Text(
                                '• 20 Oktober 2023',
                                style: TextStyle(
                                  color: Color(0xFF393938),
                                  fontSize: 12,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w400,
                                  height: 0.14,
                                ),
                              ),
                            )),
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
                width: 76, //76
                height: 93,
                decoration: const ShapeDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://via.placeholder.com/76x93"),
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
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
