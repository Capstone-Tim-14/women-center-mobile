//punya om David
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  double _rating = 3.0;

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home3',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home3'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xFFF2BED1), // Warna card bagian atas 
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: const Text('Rekomendasi Paket', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.white,)),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(35),
                              topRight: Radius.circular(35),
                            ),
                            child: Image.asset(
                              'Assets/images/home_3.jpg',
                              width: 355,
                              height: 235,
                            ),
                          ),     
                          Container(
                            height: 75,
                            decoration: BoxDecoration(
                              color: Color(0xFFF8E8EE), // Warna card bagian bawah 
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('Rp550.000', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFFF4518D))),
                                SizedBox(width: 5),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text('Pilih Paket', style: TextStyle(color: Color(0xFFF4518D)),),
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromRGBO(250, 181, 207, 0.855), // Warna latar belakang
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20), // Mengatur sudut tombol
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              color: Color(0xFFF8E8EE), // Warna card bagian bawah 
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {}, 
                                  icon: Icon(Icons.keyboard_arrow_down, color: Color(0xFFF4518D)),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Jarak antara card pertama dan card kedua
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Card(
                    margin: EdgeInsets.all(20),
                    color: Color(0xFFF8E8EE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Rekomendasi Konselor', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                          SizedBox(height: 20),
                          Column(
                            children: [
                              Center(
                                child: CircleAvatar(
                                  backgroundImage: AssetImage('Assets/images/home_3_profil.jpg'), // Ganti dengan path foto profil konselor
                                  radius: 40,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Stanefie Russel, M.Psi., Psikolog', style: TextStyle(fontSize: 16,)),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Profesional Konselor', style: TextStyle(fontSize: 12, color: Color(0xFF646464))),
                            ],
                          ),
                          SizedBox(height: 45),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  RatingBar.builder(
                                    initialRating: _rating,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber, // Warna bintang yang terisi
                                      
                                    ),
                                    unratedColor: Colors.white, // Warna bintang yang tidak terisi
                                    onRatingUpdate: (rating) {
                                      setState(() {
                                        _rating = rating;
                                      });
                                    },
                                    itemSize: 18, // Ukuran bintang
                                  ),
                                  SizedBox(width: 10), // Jarak antara bintang dan teks
                                  Text(
                                    _rating.toString(),
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                              SizedBox(height: 25),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Universitas', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Indonesia', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('S2 - Psikologi', style: TextStyle(fontSize: 13, color: Color(0xFF646464)))
                                ],
                              ),
                              SizedBox(height: 25,),
                               Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('@stefaniersl', style: TextStyle(fontSize: 15))
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
