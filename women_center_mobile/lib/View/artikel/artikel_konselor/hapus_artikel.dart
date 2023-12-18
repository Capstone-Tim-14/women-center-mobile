//rafi
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:women_center_mobile/Models/artikel_konselor_model/artikel_konselor_model.dart';
import 'package:women_center_mobile/View/artikel/artikel_konselor/edit_artikel.dart';
import 'package:women_center_mobile/ViewModel/artikel_konselor_model/artikel_konselor_get.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: RejectArtikel(),
  ));
}

class RejectArtikel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final artikelProvider = Provider.of<ArtikelKonselorProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        elevation: 0,
        title: Text(
          'Rejected',
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
                    if (article.status == 'REJECTED') {
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
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        width: 328,
        height: 84,
        padding: const EdgeInsets.only(top: 10.50, bottom: 19.73),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          shadows: [
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 50,
                            height: 53.77,
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
                          const SizedBox(width: 10),
                          SizedBox(
                            width: 127,
                            height: 33,
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
                    const SizedBox(width: 5),
                    Container(
                      height: 40,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 24,
                                  height: 24,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Stack(children: [
                                    Icon(Icons.delete, color: Colors.grey),
                                  ]),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  'Delete',
                                  style: TextStyle(
                                    color: Color(0xFFEC5858),
                                    fontSize: 12,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          InkWell(
                            onTap: () {
                              // Tindakan yang ingin dilakukan saat ikon edit ditekan
                              // Misalnya:
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Edit_Artikel()),
                              );
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 24,
                                  height: 24,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Stack(
                                    children: [
                                      Icon(Icons.edit, color: Colors.grey),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  'Edit',
                                  style: TextStyle(
                                    color: Color(0xFF34C759),
                                    fontSize: 12,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Container(
                          //   child: Column(
                          //     mainAxisSize: MainAxisSize.min,
                          //     mainAxisAlignment: MainAxisAlignment.start,
                          //     crossAxisAlignment: CrossAxisAlignment.start,
                          //     children: [
                          //       Container(
                          //         width: 24,
                          //         height: 24,
                          //         clipBehavior: Clip.antiAlias,
                          //         decoration: BoxDecoration(),
                          //         child: Stack(children: [
                          //           Icon(Icons.edit, color: Colors.grey),
                          //         ]),
                          //       ),
                          //       const SizedBox(height: 2),
                          //       Text(
                          //         'Edit',
                          //         style: TextStyle(
                          //           color: Color(0xFF34C759),
                          //           fontSize: 12,
                          //           fontFamily: 'Raleway',
                          //           fontWeight: FontWeight.w700,
                          //           height: 0,
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

    // return Container(
    //   width: 340,
    //   height: 100,
    //   padding: const EdgeInsets.only(top: 14, bottom: 11.10),
    //   clipBehavior: Clip.antiAlias,
    //   decoration: ShapeDecoration(
    //     color: Colors.white,
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(8),
    //     ),
    //     shadows: [
    //       BoxShadow(
    //         color: Color(0x19000000),
    //         blurRadius: 14,
    //         offset: Offset(0, 4),
    //         spreadRadius: 0,
    //       ),
    //     ],
    //   ),
    //   child: Row(
    //     mainAxisSize: MainAxisSize.min,
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: [
    //       Expanded(
    //         child: Container(
    //           height: double.infinity,
    //           padding: const EdgeInsets.only(left: 24, right: 15),
    //           child: Row(
    //             mainAxisSize: MainAxisSize.min,
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             crossAxisAlignment: CrossAxisAlignment.end,
    //             children: [
    //               Container(
    //                 child: Row(
    //                   mainAxisSize: MainAxisSize.min,
    //                   mainAxisAlignment: MainAxisAlignment.start,
    //                   crossAxisAlignment: CrossAxisAlignment.center,
    //                   children: [
    //                     Padding(
    //                       padding: const EdgeInsets.only(bottom: 10),
    //                       child: Container(
    //                         width: 50,
    //                         height: 58.90,
    //                         decoration: ShapeDecoration(
    //                           image: DecorationImage(
    //                             image: NetworkImage(artikelReview.thumbnail),
    //                             fit: BoxFit.cover,
    //                           ),
    //                           shape: RoundedRectangleBorder(
    //                             borderRadius: BorderRadius.circular(10),
    //                           ),
    //                         ),
    //                       ),
    //                     ),
    //                     const SizedBox(width: 10),
    //                     SizedBox(
    //                       width: 200,
    //                       height: 80,
    //                       child: Text(
    //                         '${artikelReview.title}\n',
    //                         style: TextStyle(
    //                           color: Color(0xFF1F1F1F),
    //                           fontSize: 15,
    //                           fontFamily: 'Raleway',
    //                           fontWeight: FontWeight.w700,
    //                           height: 0,
    //                         ),
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //               const SizedBox(width: 0),
    //               Text(
    //                 'Process',
    //                 style: TextStyle(
    //                   color: Color(0xFFFAD13F),
    //                   fontSize: 15,
    //                   fontFamily: 'Raleway',
    //                   fontWeight: FontWeight.w700,
    //                   height: 0,
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
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

class ArtikelCard extends StatelessWidget {
  final Article artikel;

  ArtikelCard({required this.artikel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context)
          .size
          .width, // Sesuaikan lebar dengan lebar layar
      height: 280,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 178,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(artikel.thumbnail),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  artikel.title ?? '',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                    height: 1.3,
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Tindakan yang ingin dilakukan saat ikon edit ditekan
                    // Misalnya:
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => EditArticleScreen(article: artikel)),
                    // );
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Stack(
                          children: [
                            Icon(Icons.edit, color: Colors.grey),
                          ],
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'Edit',
                        style: TextStyle(
                          color: Color(0xFF34C759),
                          fontSize: 12,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          height: 0,
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
    );
  }
}

// import 'package:flutter/material.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:women_center_mobile/Models/artikel_konselor_model/artikel_konselor_model.dart';

// class ArticleListPage extends StatefulWidget {
//   @override
//   _ArticleListPageState createState() => _ArticleListPageState();
// }

// class _ArticleListPageState extends State<ArticleListPage> {
//   late Future<List<Article>> futureArticles;
//   TextEditingController searchController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     futureArticles = fetchArticles();
//   }

//   Future<List<Article>> fetchArticles() async {
//     final response = await http.get(
//       Uri.parse('https://api-ferminacare.tech/api/v1/articles'),
//       headers: {
//         'Authorization':
//             'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZnVsbF9uYW1lIjoicHV0cmlkaWFuYSIsImVtYWlsIjoicHV0cmlAZ21haWwuY29tIiwicm9sZSI6InVzZXIiLCJleHAiOjE3MDI0MTQwODZ9.KfauB8_ZBFmwvdLx5u3FDi0pS9QPoOI97fCCIDAOgCY',
//       },
//     );

//     if (response.statusCode == 200) {
//       List<Article> articles = [];
//       final jsonData = json.decode(response.body);
//       for (var item in jsonData['data']) {
//         articles.add(Article.fromJson(item));
//       }
//       return articles;
//     } else {
//       throw Exception('Failed to load articles');
//     }
//   }

//   Future<void> deleteArticle(int id) async {
//     final response = await http.delete(
//       Uri.parse('https://api-ferminacare.tech/api/v1/articles/$id'),
//       headers: {
//         'Authorization':
//             'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZnVsbF9uYW1lIjoicHV0cmlkaWFuYSIsImVtYWlsIjoicHV0cmlAZ21haWwuY29tIiwicm9sZSI6InVzZXIiLCJleHAiOjE3MDI0MTQwODZ9.KfauB8_ZBFmwvdLx5u3FDi0pS9QPoOI97fCCIDAOgCY',
//       },
//     );

//     if (response.statusCode == 200) {
//       // Artikel berhasil dihapus, lakukan sesuatu (contoh: refresh data)
//       setState(() {
//         futureArticles = fetchArticles(); // Memuat ulang daftar artikel
//       });
//     } else {
//       throw Exception('Failed to delete article');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Article List',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: Color(0xFFFDCEDF),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           Container(
//             padding: EdgeInsets.all(8.0),
//             child: TextField(
//               controller: searchController,
//               decoration: InputDecoration(
//                 labelText: 'Search...',
//                 prefixIcon: Icon(Icons.search),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(30.0)),
//                   borderSide: BorderSide.none,
//                 ),
//                 filled: true,
//                 fillColor: Colors.grey[200],
//                 contentPadding:
//                     EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30.0),
//                   borderSide: BorderSide(color: Colors.white, width: 1.0),
//                   gapPadding: 3.3,
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30.0),
//                   borderSide: BorderSide(color: Colors.white, width: 1.0),
//                   gapPadding: 3.3,
//                 ),
//               ),
//               onChanged: (value) {
//                 // Use value for search...
//               },
//             ),
//           ),
//           Expanded(
//             child: FutureBuilder<List<Article>>(
//               future: futureArticles,
//               builder: (context, snapshot) {
//                 if (snapshot.connectionState == ConnectionState.waiting) {
//                   return Center(
//                     child: CircularProgressIndicator(),
//                   );
//                 } else if (snapshot.hasError) {
//                   return Center(
//                     child: Text('${snapshot.error}'),
//                   );
//                 } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//                   return Center(
//                     child: Text('No articles found'),
//                   );
//                 }

//                 List<Article>? articles = snapshot.data;
//                 return ListView.builder(
//                   itemCount: articles!.length,
//                   itemBuilder: (context, index) {
//                     return ArticleCard(
//                       article: articles[index],
//                       onDelete: () {
//                         showDialog(
//                           context: context,
//                           builder: (BuildContext context) {
//                             return AlertDialog(
//                               title: Text('Delete Article?'),
//                               content: Text(
//                                   'Are you sure you want to delete this article?'),
//                               actions: <Widget>[
//                                 TextButton(
//                                   onPressed: () {
//                                     Navigator.of(context).pop();
//                                   },
//                                   child: Text('No'),
//                                 ),
//                                 TextButton(
//                                   onPressed: () async {
//                                     try {
//                                       await deleteArticle(articles[index]
//                                           .id); // Menghapus artikel
//                                       Navigator.of(context).pop();
//                                     } catch (e) {
//                                       print(e.toString());
//                                       // Tampilkan pesan kesalahan jika gagal menghapus
//                                       ScaffoldMessenger.of(context)
//                                           .showSnackBar(SnackBar(
//                                         content:
//                                             Text('Failed to delete article'),
//                                         backgroundColor: Colors.red,
//                                       ));
//                                     }
//                                   },
//                                   child: Text('Yes'),
//                                 ),
//                               ],
//                             );
//                           },
//                         );
//                       },
//                       onEdit: () {
//                         // Add logic for editing article here
//                       },
//                     );
//                   },
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Article {
//   final int id;
//   final String title;
//   final String thumbnail;
//   final String slug;
//   final String status;
//   final Map<String, dynamic> author;
//   final String publishedAt;

//   Article({
//     required this.id,
//     required this.title,
//     required this.thumbnail,
//     required this.slug,
//     required this.status,
//     required this.author,
//     required this.publishedAt,
//   });

//   factory Article.fromJson(Map<String, dynamic> json) {
//     return Article(
//       id: json['id'],
//       title: json['title'],
//       thumbnail: json['thumbnail'],
//       slug: json['slug'],
//       status: json['status'],
//       author: json['author'],
//       publishedAt: json['published_at'],
//     );
//   }
// }

class ArticleCard extends StatelessWidget {
  final Article article;
  final VoidCallback onDelete;
  final VoidCallback onEdit;

  const ArticleCard({
    required this.article,
    required this.onDelete,
    required this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                article.thumbnail,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 26),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10), // Sesuaikan dengan kebutuhan
                          child: Text(
                            article.title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          InkWell(
                            onTap: onDelete,
                            child: Column(
                              children: [
                                Icon(Icons.delete, color: Colors.grey),
                                SizedBox(height: 4),
                                Text(
                                  'Delete',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          InkWell(
                            onTap: onEdit,
                            child: Column(
                              children: [
                                Icon(Icons.edit, color: Colors.grey),
                                SizedBox(height: 4),
                                Text(
                                  'Edit',
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
