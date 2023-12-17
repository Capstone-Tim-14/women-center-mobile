//rafi
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: ProsesArtikel(),
  ));
}

class ProsesArtikel extends StatefulWidget {
  const ProsesArtikel({super.key});

  @override
  State<ProsesArtikel> createState() => _ProsesArtikelState();
}

class _ProsesArtikelState extends State<ProsesArtikel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        elevation: 0,

        title: Text(
          'Process',
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
              SearchProses(),
              SizedBox(
                height: 23,
              ),
              ProsesContainer()
              // ArtikelCardScrollable(),
            ],
          ),
        ),
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

//container proses
class ProsesContainer extends StatefulWidget {
  const ProsesContainer({Key? key}) : super(key: key);

  @override
  _ProsesContainerState createState() => _ProsesContainerState();
}

class _ProsesContainerState extends State<ProsesContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 84,
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
                        Container(
                          width: 50,
                          height: 58.90,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                              image: AssetImage(
                                  'Assets/images/kartini.png'), // Ganti dengan URL gambar Anda
                              fit: BoxFit.cover, // Sesuaikan dengan kebutuhan
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        SizedBox(
                          width: 100,
                          height: 18,
                          child: Text(
                            'Hari Kartini\n',
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
                  const SizedBox(width: 40),
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
