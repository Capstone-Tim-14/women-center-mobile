import 'package:flutter/material.dart';
import 'package:women_center_mobile/View/profil_page/favorit/artikel_favorit.dart';
import 'package:women_center_mobile/View/riwayat/riwayat_konselor/riwayat_konselor_dibatalkan.dart';
import 'package:women_center_mobile/View/riwayat/riwayat_konselor/riwayat_konselor_selesai.dart';

void main() {
  runApp(RiwayarKonselurView());
}

class RiwayarKonselurView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFF9F5F6),
          elevation: 0,
          title: const Text('Riwayat Konseling',
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Choice(),
                    // Add more widgets here if needed
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
            items: <String>['Semua', 'Selesai', 'Dibatalkan']
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
    if (dropdownValue == 'Semua') {
      return Column(
        children: [
          RiwayatKonselorSelesai(),
          RiwayatKonselirBatalkan(),
        ],
      );
    } else if (dropdownValue == 'Selesai') {
      return RiwayatKonselorSelesai();
    } else if (dropdownValue == 'Dibatalkan') {
      return RiwayatKonselirBatalkan();
    } else {
      return Container(
        alignment: Alignment.center,
        child: Text('Konten untuk $dropdownValue belum diimplementasikan'),
      );
    }
  }
}

// class RiwayatKonselirSemua extends StatefulWidget {
//   @override
//   _RiwayatKonselirSemuaState createState() => _RiwayatKonselirSemuaState();
// }

// class _RiwayatKonselirSemuaState extends State<RiwayatKonselirSemua> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         const SizedBox(
//           height: 15,
//         ),
//         Container(
//           width: 357,
//           height: 169,
//           padding: const EdgeInsets.all(12),
//           decoration: ShapeDecoration(
//             color: Colors.white,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(12),
//             ),
//             shadows: [
//               const BoxShadow(
//                 color: Color(0x19000000),
//                 blurRadius: 14,
//                 offset: Offset(0, 4),
//                 spreadRadius: 0,
//               )
//             ],
//           ),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       width: 333,
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text(
//                             'Andika Kagen Band',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               color: Color(0xFF1F1F1F),
//                               fontSize: 14,
//                               fontFamily: 'Raleway',
//                               fontWeight: FontWeight.w600,
//                               height: 0,
//                             ),
//                           ),
//                           const SizedBox(width: 10),
//                           Container(
//                             width: 140,
//                             child: const Row(
//                               mainAxisSize: MainAxisSize.min,
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Text.rich(
//                                   TextSpan(
//                                     children: [
//                                       TextSpan(
//                                         text: 'Booking Id : ',
//                                         style: TextStyle(
//                                           color: Color(0xFF1F1F1F),
//                                           fontSize: 12,
//                                           fontFamily: 'Raleway',
//                                           fontWeight: FontWeight.w500,
//                                           height: 0,
//                                         ),
//                                       ),
//                                       TextSpan(
//                                         text: '812jk8uhju5',
//                                         style: TextStyle(
//                                           color: Color(0xFFF4518D),
//                                           fontSize: 12,
//                                           fontFamily: 'Raleway',
//                                           fontWeight: FontWeight.w500,
//                                           height: 0,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   textAlign: TextAlign.center,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: 12),
//                     const Text(
//                       'Paket Voice Call',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Color(0xFF939393),
//                         fontSize: 12,
//                         fontFamily: 'Raleway',
//                         fontWeight: FontWeight.w500,
//                         height: 0,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 12),
//               Container(
//                 width: 357,
//                 decoration: const ShapeDecoration(
//                   shape: RoundedRectangleBorder(
//                     side: BorderSide(
//                       width: 1,
//                       strokeAlign: BorderSide.strokeAlignCenter,
//                       color: Color(0x49A6A6A6),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 12),
//               Container(
//                 height: 46,
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       child: const Row(
//                         mainAxisSize: MainAxisSize.min,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Icon(
//                             Icons
//                                 .date_range, // Ganti dengan ikon yang diinginkan
//                             size: 20,
//                             color: Colors
//                                 .black, // Sesuaikan dengan warna ikon yang diinginkan
//                           ),
//                           SizedBox(width: 6),
//                           Text(
//                             'Senin, 2 Oktober 2023',
//                             style: TextStyle(
//                               color: Color(0xFF1F1F1F),
//                               fontSize: 12,
//                               fontFamily: 'Raleway',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: 6),
//                     Container(
//                       child: const Row(
//                         mainAxisSize: MainAxisSize.min,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Icon(
//                             Icons
//                                 .access_time, // Ganti dengan ikon yang diinginkan
//                             size: 20,
//                             color: Colors
//                                 .black, // Sesuaikan dengan warna ikon yang diinginkan
//                           ),
//                           SizedBox(width: 6),
//                           Text(
//                             '10:oo-12:00',
//                             style: TextStyle(
//                               color: Color(0xFFF4518D),
//                               fontSize: 12,
//                               fontFamily: 'Raleway',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 12),
//               Container(
//                 height: 20,
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     Container(
//                       width: 333,
//                       child: const Padding(
//                         padding: EdgeInsets.only(left: 240),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Icon(
//                               Icons.cancel, // Ganti dengan ikon yang diinginkan
//                               size: 20,
//                               color: Colors
//                                   .red, // Sesuaikan dengan warna ikon yang diinginkan
//                             ),
//                             Padding(
//                               padding: EdgeInsets.only(left: 3),
//                               child: SizedBox(
//                                 width: 70,
//                                 child: Text(
//                                   'Dibatalkan',
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                     color: Colors.red,
//                                     fontSize: 14,
//                                     fontFamily: 'Raleway',
//                                     fontWeight: FontWeight.w500,
//                                     height: 0,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
