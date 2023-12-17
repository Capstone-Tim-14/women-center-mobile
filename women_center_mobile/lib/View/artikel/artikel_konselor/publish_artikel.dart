import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:women_center_mobile/Models/artikel_konselor_model/artikel_konselor_model.dart';
import 'package:women_center_mobile/ViewModel/artikel_konselor_model/artikel_konselor_get.dart';

void main(List<String> args) {
  runApp(PublishArtikel());
}

class PublishArtikel extends StatefulWidget {
  const PublishArtikel({super.key});

  @override
  State<PublishArtikel> createState() => _PublishArtikelState();
}

class _PublishArtikelState extends State<PublishArtikel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        elevation: 0,

        title: Text(
          'Publish',
          style: GoogleFonts.roboto(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w700,
            // height: 0.02,
          ),
        ),
        centerTitle: true, // Judul app bar
        leading: IconButton(
          // Tombol kembali di sebelah kiri
          icon: const Icon(Icons.arrow_back), color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              SearchPublish(),
              SizedBox(
                height: 23,
              ),
              ArtikelCardScrollable()
              // ArtikelCardScrollable(),
            ],
          ),
        ),
      ),
    );
  }
}

//----------------------search proses-------------------//
class SearchPublish extends StatefulWidget {
  const SearchPublish({super.key});

  @override
  State<SearchPublish> createState() => _SearchPublishState();
}

class _SearchPublishState extends State<SearchPublish> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 42,
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 14,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 20,
            height: 20,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(),
            child: const Stack(
              children: [
                Icon(
                  Icons.search, // Menambahkan icon search di sini
                  size: 20,
                  color: Color(0xFFA5A5A5),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: TextField(
                controller: _textEditingController,
                decoration: const InputDecoration(
                  hintText: 'Cari artikel',
                  hintStyle: TextStyle(
                    color: Color(0xFFA5A5A5),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0.15,
                  ),
                  border: InputBorder.none,
                ),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0.15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//-----------------card artikel untuk publish---------------//
class ArtikelCardScrollable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Menggunakan provider untuk mengakses artikel
    final artikelProvider = Provider.of<ArtikelKonselorProvider>(context);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: artikelProvider.articles.map((article) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: ArtikelCard(
              artikel: article,
            ),
          );
        }).toList(),
      ),
    );
  }
}

class ArtikelCard extends StatelessWidget {
  final Article artikel;

  ArtikelCard({required this.artikel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 280,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 328,
            height: 178,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    artikel.thumbnail), // Menggunakan URL gambar dari artikel
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          // const SizedBox(height: 12),
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 328,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 114.04,
                        child: Text.rich(
                          TextSpan(
                            children: [],
                          ),
                        ),
                      ),
                      const SizedBox(width: 135),
                      Expanded(
                        child: SizedBox(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 328,
                  child: Text(
                    artikel.title ?? '',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                      height: 1.3,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
