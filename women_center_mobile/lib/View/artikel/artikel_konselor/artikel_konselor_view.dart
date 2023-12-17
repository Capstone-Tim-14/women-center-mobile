//create artikel konselor

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:women_center_mobile/Models/artikel_model/artikel_model.dart';
import 'package:women_center_mobile/View/artikel/artikel_konselor/artikel_konselor_widget.dart';
// import 'package:women_center_mobile/View/bottomnavigationbar/bottom_navigation_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';

import 'package:women_center_mobile/ViewModel/artikel_konselor_model/artikel_konselor_get.dart';
import 'package:women_center_mobile/ViewModel/artikel_view_model/artikel_view_model.dart';

// import 'package:women_center_mobile/ViewModel/artikel_konselor_model/1.dart';

void main(List<String> args) {
  runApp(const ArtikelKonselor());
}

// class artikelKonselor extends StatefulWidget {
//   const artikelKonselor({super.key});

//   @override
//   State<artikelKonselor> createState() => _artikelKonselorState();
// }

// class _artikelKonselorState extends State<artikelKonselor> {
//   ArtikelModel? _artikel;
//   @override
//   void initState() {
//     super.initState();
//     fetchData();
//   }

//   Future<void> fetchData() async {
//     try {
//       ArtikelModel? fetchedArtikel =
//           await Provider.of<ArtikelViewModel>(context, listen: false)
//               .fetchLatestArtikel();
//       setState(() {
//         _artikel = fetchedArtikel;
//       });
//     } catch (e) {
//       // Handle errors here
//       print('Error: $e');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     // final artikelProvider = Provider.of<ArtikelViewModel>(context);

//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.pink[100],
//           elevation: 0,
//           title: Center(
//               child: Text(
//             'Artikel',
//             style: GoogleFonts.roboto(
//               color: Color(0xFF0B0B0B),
//               fontSize: 18,
//               fontWeight: FontWeight.w500,
//             ),
//           )),
//           automaticallyImplyLeading: false,
//         ),
//         body: SingleChildScrollView(
//           child: Center(
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 17,
//                 ),
//                 Search(),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Kotak(),
//                 SizedBox(
//                   height: 25,
//                 ),
//                 CustomButton(),
//                 SizedBox(
//                   height: 21.8,
//                 ),
//                 ArtikelCardScrollable(),
//                 ArtikelKonselorCard(
//                   artikel: _artikel,
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ArtikelKonselor extends StatefulWidget {
//   const ArtikelKonselor({Key? key}) : super(key: key);

//   @override
//   _ArtikelKonselorState createState() => _ArtikelKonselorState();
// }

// class _ArtikelKonselorState extends State<ArtikelKonselor> {
//   ArtikelViewModel _viewModel = ArtikelViewModel();

//   @override
//   void initState() {
//     super.initState();
//     fetchData();
//   }

//   Future<void> fetchData() async {
//     try {
//       await _viewModel.fetchAlllArtikel();
//       setState(() {});
//     } catch (e) {
//       print('Error: $e');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.pink[100],
//           elevation: 0,
//           title: Center(
//               child: Text(
//             'Artikel',
//             style: GoogleFonts.roboto(
//               color: Color(0xFF0B0B0B),
//               fontSize: 18,
//               fontWeight: FontWeight.w500,
//             ),
//           )),
//           automaticallyImplyLeading: false,
//         ),
//         body: SingleChildScrollView(
//           child: Center(
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 17,
//                 ),
//                 Search(),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Kotak(),
//                 SizedBox(
//                   height: 25,
//                 ),
//                 CustomButton(),
//                 SizedBox(
//                   height: 21.8,
//                 ),
//                 _viewModel.listArtikel.isNotEmpty
//                     ? ArtikelKonselorCard(artikelList: _viewModel.listArtikel)
//                     : CircularProgressIndicator(),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class ArtikelKonselor extends StatefulWidget {
  const ArtikelKonselor({Key? key}) : super(key: key);

  @override
  _ArtikelKonselorState createState() => _ArtikelKonselorState();
}

class _ArtikelKonselorState extends State<ArtikelKonselor> {
  ArtikelViewModel _viewModel = ArtikelViewModel();

  @override
  void initState() {
    super.initState();
    fetchData();
    fetchdata2();
  }

  Future<void> fetchData() async {
    try {
      await _viewModel.fetchAlllArtikel();
      setState(() {});
    } catch (e) {
      print('Error: $e');
    }
  }

  Future<void> fetchdata2() async {
    await Provider.of<ArtikelKonselorProvider>(context, listen: false)
        .fetchArticles();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[100],
          elevation: 0,
          title: Center(
            child: Text(
              'Artikel',
              style: GoogleFonts.roboto(
                color: Color(0xFF0B0B0B),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          automaticallyImplyLeading: false,
        ),
        // body: Center(
        //   child: ListView(
        //     children: [
        //       SizedBox(height: 17),
        //       Search(),
        //       SizedBox(height: 20),
        //       Kotak(),
        //       SizedBox(height: 25),
        //       CustomButton(),
        //       SizedBox(height: 21.8),
        //       _viewModel.listArtikel.isNotEmpty
        //           ? ArtikelKonselorCard(artikelList: _viewModel.listArtikel)
        //           : Center(child: CircularProgressIndicator()),
        //     ],
        //   ),
        // ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 15),
                Search(),
                SizedBox(height: 20),
                Kotak(),
                SizedBox(height: 25),
                CustomButton(),
                SizedBox(height: 21.8),
                _viewModel.listArtikel.isNotEmpty
                    ? ArtikelKonselorCard(artikelList: _viewModel.listArtikel)
                    : Center(child: CircularProgressIndicator()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
