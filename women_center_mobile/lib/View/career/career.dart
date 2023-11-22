import 'package:flutter/material.dart';

class Career extends StatefulWidget {
  @override
  _CareerState createState() => _CareerState();
}

class _CareerState extends State<Career> {
  Color _warna1 = Color.fromARGB(255, 240, 192, 209);
  Color _textColor1 = Color.fromARGB(255, 245, 67, 132);
  Color _warna2 = Colors.white;
  Color _textColor2 = Colors.black;
  Color _warna3 = Colors.white;
  Color _textColor3 = Colors.black;
  Color _warna4 = Colors.white;
  Color _textColor4 = Colors.black;
  Color _warna5 = Colors.white;
  Color _textColor5 = Colors.black;
  Color _warna6 = Colors.white;
  Color _textColor6 = Colors.black;
  Color _warna7 = Colors.white;
  Color _textColor7 = Colors.black;
  Color _warna8 = Colors.white;
  Color _textColor8 = Colors.black;

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
            "Konseling",
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
                          _warna1 = (_warna1 == Colors.white) ? const Color.fromRGBO(244, 81, 141, 1) : Colors.white;
                          _textColor1 = (_textColor1 == Colors.black) ? Colors.white : Colors.black; 
                        });
                      }, 
                      child: Text('On Side', style: TextStyle(color: _textColor1, fontSize: 14)),
                      style: ElevatedButton.styleFrom(primary: _warna1),
                    ),
                    SizedBox(width: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _warna2 = (_warna2 == Colors.white) ? const Color.fromRGBO(244, 81, 141, 1) : Colors.white;
                          _textColor2 = (_textColor2 == Colors.black) ? Colors.white : Colors.black;
                        });
                      }, 
                      child: Text('Full time', style: TextStyle(color: _textColor2, fontSize: 14)),
                      style: ElevatedButton.styleFrom(primary: _warna2),
                    ),
                    SizedBox(width: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _warna3 = (_warna3 == Colors.white) ? const Color.fromRGBO(244, 81, 141, 1) : Colors.white;
                          _textColor3 = (_textColor3 == Colors.black) ? Colors.white : Colors.black;
                        });
                      }, 
                      child: Text('Off side', style: TextStyle(color: _textColor3, fontSize: 14)),
                      style: ElevatedButton.styleFrom(primary: _warna3),
                    ),
                    SizedBox(width: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _warna4 = (_warna4 == Colors.white) ? const Color.fromRGBO(244, 81, 141, 1) : Colors.white;
                          _textColor4 = (_textColor4 == Colors.black) ? Colors.white : Colors.black;
                        });
                      }, 
                      child: Text('Half time', style: TextStyle(color: _textColor4, fontSize: 14)),
                      style: ElevatedButton.styleFrom(primary: _warna4),
                    ),
                    SizedBox(width: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _warna5 = (_warna5 == Colors.white) ? const Color.fromRGBO(244, 81, 141, 1) : Colors.white;
                          _textColor5 = (_textColor5 == Colors.black) ? Colors.white : Colors.black;
                        });
                      }, 
                      child: Text('M', style: TextStyle(color: _textColor5, fontSize: 14)),
                      style: ElevatedButton.styleFrom(primary: _warna5),
                    ),
                    SizedBox(width: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _warna5 = (_warna6 == Colors.white) ? const Color.fromRGBO(244, 81, 141, 1) : Colors.white;
                          _textColor5 = (_textColor6 == Colors.black) ? Colors.white : Colors.black;
                        });
                      }, 
                      child: Text('Medium level', style: TextStyle(color: _textColor6, fontSize: 14)),
                      style: ElevatedButton.styleFrom(primary: _warna6),
                    ),
                    SizedBox(width: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _warna5 = (_warna7 == Colors.white) ? const Color.fromRGBO(244, 81, 141, 1) : Colors.white;
                          _textColor5 = (_textColor7 == Colors.black) ? Colors.white : Colors.black;
                        });
                      }, 
                      child: Text('Advance level', style: TextStyle(color: _textColor7, fontSize: 14)),
                      style: ElevatedButton.styleFrom(primary: _warna7),
                    ),
                    SizedBox(width: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _warna5 = (_warna8 == Colors.white) ? const Color.fromRGBO(244, 81, 141, 1) : Colors.white;
                          _textColor5 = (_textColor8 == Colors.black) ? Colors.white : Colors.black;
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
        ),
      ),
    );
  }
}
