import 'package:flutter/material.dart';

class Career extends StatefulWidget {
  @override
  _CareerState createState() => _CareerState();
}

class _CareerState extends State<Career> {
  Color _warna1 = Color.fromARGB(255, 240, 192, 209);
  Color _textColor1 = Color.fromARGB(255, 245, 67, 132);
  Color _warna2 = Color.fromARGB(255, 240, 192, 209);
  Color _textColor2 = Color.fromARGB(255, 245, 67, 132);
  Color _warna3 = Color.fromARGB(255, 240, 192, 209);
  Color _textColor3 = Color.fromARGB(255, 245, 67, 132);
  Color _warna4 = Color.fromARGB(255, 240, 192, 209);
  Color _textColor4 = Color.fromARGB(255, 245, 67, 132);
  Color _warna5 = Color.fromARGB(255, 240, 192, 209);
  Color _textColor5 = Color.fromARGB(255, 245, 67, 132);
  Color _warna6 = Color.fromARGB(255, 240, 192, 209);
  Color _textColor6 = Color.fromARGB(255, 245, 67, 132);
  Color _warna7 = Color.fromARGB(255, 240, 192, 209);
  Color _textColor7 = Color.fromARGB(255, 245, 67, 132);
  Color _warna8 = Color.fromARGB(255, 240, 192, 209);
  Color _textColor8 = Color.fromARGB(255, 245, 67, 132);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Center(
          child: Text(
            "Karir",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[200],
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Filter",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _warna1 = (_warna1 == Color.fromARGB(255, 240, 192, 209)) ? const Color.fromRGBO(244, 81, 141, 1) : Color.fromARGB(255, 240, 192, 209);
                              _textColor1 = (_textColor1 == Color.fromARGB(255, 245, 67, 132)) ? Colors.white : Color.fromARGB(255, 245, 67, 132); 
                            });
                          }, 
                          child: Text('On Side', style: TextStyle(color: _textColor1, fontSize: 14)),
                          style: ElevatedButton.styleFrom(primary: _warna1),
                        ),
                        SizedBox(width: 10.0),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _warna2 = (_warna2 == Color.fromARGB(255, 240, 192, 209)) ? const Color.fromRGBO(244, 81, 141, 1) : Color.fromARGB(255, 240, 192, 209);
                              _textColor2 = (_textColor2 == Color.fromARGB(255, 245, 67, 132)) ? Colors.white : Color.fromARGB(255, 245, 67, 132);
                            });
                          }, 
                          child: Text('Full time', style: TextStyle(color: _textColor2, fontSize: 14)),
                          style: ElevatedButton.styleFrom(primary: _warna2),
                        ),
                        SizedBox(width: 10.0),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _warna3 = (_warna3 == Color.fromARGB(255, 240, 192, 209)) ? const Color.fromRGBO(244, 81, 141, 1) : Color.fromARGB(255, 240, 192, 209);
                              _textColor3 = (_textColor3 == Color.fromARGB(255, 245, 67, 132)) ? Colors.white : Color.fromARGB(255, 245, 67, 132);
                            });
                          }, 
                          child: Text('Off side', style: TextStyle(color: _textColor3, fontSize: 14)),
                          style: ElevatedButton.styleFrom(primary: _warna3),
                        ),
                        SizedBox(width: 10.0),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _warna4 = (_warna4 == Color.fromARGB(255, 240, 192, 209)) ? const Color.fromRGBO(244, 81, 141, 1) : Color.fromARGB(255, 240, 192, 209);
                              _textColor4 = (_textColor4 == Color.fromARGB(255, 245, 67, 132)) ? Colors.white : Color.fromARGB(255, 245, 67, 132);
                            });
                          }, 
                          child: Text('Half time', style: TextStyle(color: _textColor4, fontSize: 14)),
                          style: ElevatedButton.styleFrom(primary: _warna4),
                        ),
                        SizedBox(width: 10.0),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _warna6 = (_warna6 == Color.fromARGB(255, 240, 192, 209)) ? const Color.fromRGBO(244, 81, 141, 1) : Color.fromARGB(255, 240, 192, 209);
                              _textColor6 = (_textColor6 == Color.fromARGB(255, 245, 67, 132)) ? Colors.white : Color.fromARGB(255, 245, 67, 132);
                            });
                          }, 
                          child: Text('Medium level', style: TextStyle(color: _textColor6, fontSize: 14)),
                          style: ElevatedButton.styleFrom(primary: _warna6),
                        ),
                        SizedBox(width: 10.0),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _warna7 = (_warna7 == Color.fromARGB(255, 240, 192, 209)) ? const Color.fromRGBO(244, 81, 141, 1) : Color.fromARGB(255, 240, 192, 209);
                              _textColor7 = (_textColor7 == Color.fromARGB(255, 245, 67, 132)) ? Colors.white : Color.fromARGB(255, 245, 67, 132);
                            });
                          }, 
                          child: Text('Advance level', style: TextStyle(color: _textColor7, fontSize: 14)),
                          style: ElevatedButton.styleFrom(primary: _warna7),
                        ),
                        SizedBox(width: 10.0),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _warna8 = (_warna8 == Color.fromARGB(255, 240, 192, 209)) ? const Color.fromRGBO(244, 81, 141, 1) : Color.fromARGB(255, 240, 192, 209);
                              _textColor8 = (_textColor8 == Color.fromARGB(255, 245, 67, 132)) ? Colors.white : Color.fromARGB(255, 245, 67, 132);
                            });
                          }, 
                          child: Text('Entry level', style: TextStyle(color: _textColor8, fontSize: 14)),
                          style: ElevatedButton.styleFrom(primary: _warna8),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 15),
              Divider(),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "For you",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
              SizedBox(height: 7),
              Divider(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 61,
                        height: 61,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('Assets/images/career1.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 15.0), // Jarak antara gambar dan teks
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Enginner',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFF4518D)
                            ),
                          ),
                          Text(
                            'PT OS SELNAJAYA INDONESIA',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Jakarta, Indonesia (On Site)',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            '23 Jun 2023',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
