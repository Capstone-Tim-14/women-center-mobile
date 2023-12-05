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
          title: const Text('Artikel Favorit',
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
          child: DropdownButton<String>(
            value: dropdownValue,
            icon: const Icon(Icons.arrow_drop_down),
            iconSize: 24,
            elevation: 16,
            underline: Container(
              height: 2,
              color: Colors.transparent,
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
      ],
    );
  }
}
