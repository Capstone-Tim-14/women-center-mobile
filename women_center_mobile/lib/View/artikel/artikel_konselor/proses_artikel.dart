//rafi
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:women_center_mobile/Models/artikel_konselor_model/artikel_konselor_model.dart';
import 'package:women_center_mobile/ViewModel/artikel_konselor_model/artikel_konselor_get.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: ProsesArtikel(),
  ));
}

class ProsesArtikel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final artikelProvider = Provider.of<ArtikelKonselorProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        elevation: 0,
        title: Text(
          'Process',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              // ... SearchProses widget and previous SizedBox
              SizedBox(
                height: 20,
              ),
              SearchProses(),
              SizedBox(
                height: 23,
              ),
              Container(
                width: 360,
                // height: 100,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: artikelProvider.articles.length,
                  itemBuilder: (context, index) {
                    final article = artikelProvider.articles[index];
                    if (article.status == 'REVIEW') {
                      return ProsesContainer(artikelReview: article);
                    } else {
                      return SizedBox(); // If it's not an article with 'Review' status, return SizedBox
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProsesContainer extends StatelessWidget {
  final Article artikelReview;

  const ProsesContainer({Key? key, required this.artikelReview})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 100,
      padding: const EdgeInsets.only(top: 14, bottom: 11.10),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 14,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              height: double.infinity,
              padding: const EdgeInsets.only(left: 24, right: 15),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                            width: 50,
                            height: 58.90,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: NetworkImage(artikelReview.thumbnail),
                                fit: BoxFit.cover,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        SizedBox(
                          width: 200,
                          height: 80,
                          child: Text(
                            '${artikelReview.title}\n',
                            style: TextStyle(
                              color: Color(0xFF1F1F1F),
                              fontSize: 15,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 0),
                  Text(
                    'Process',
                    style: TextStyle(
                      color: Color(0xFFFAD13F),
                      fontSize: 15,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//----------------------search proses-------------------//
class SearchProses extends StatefulWidget {
  const SearchProses({super.key});

  @override
  State<SearchProses> createState() => _SearchProsesState();
}

class _SearchProsesState extends State<SearchProses> {
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
