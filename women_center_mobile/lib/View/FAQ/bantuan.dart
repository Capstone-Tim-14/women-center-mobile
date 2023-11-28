import 'package:flutter/material.dart';

class FAQ extends StatefulWidget {
  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  Color _warna1 = Colors.white;
  Color _textColor1 = Colors.black;
  Color _warna2 = Colors.white;
  Color _textColor2 = Colors.black;
  Color _warna3 = Colors.white;
  Color _textColor3 = Colors.black;
  Color _warna4 = Colors.white;
  Color _textColor4 = Colors.black;

  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Center(
          child: Text(
            "Bantuan dan FAQ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: [
                      SizedBox(width: 8),
                      Text(
                        'Kategori Bantuan',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _warna1 =
                              (_warna1 == Colors.white)
                                  ? const Color.fromRGBO(244, 81, 141, 1)
                                  : Colors.white;
                          _textColor1 =
                              (_textColor1 == Colors.white)
                                  ? Colors.black
                                  : Colors.white;
                        });
                      },
                      child: Text('Informasi Umum',
                          style: TextStyle(color: _textColor1, fontSize: 14)),
                      style: ElevatedButton.styleFrom(primary: _warna1),
                    ),
                    SizedBox(width: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _warna2 =
                              (_warna2 == Colors.white)
                                  ? const Color.fromRGBO(244, 81, 141, 1)
                                  : Colors.white;
                          _textColor2 =
                              (_textColor2 == Colors.white)
                                  ? Colors.black
                                  : Colors.white;
                        });
                      },
                      child: Text('Akun',
                          style: TextStyle(color: _textColor2, fontSize: 14)),
                      style: ElevatedButton.styleFrom(primary: _warna2),
                    ),
                    SizedBox(width: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _warna3 =
                              (_warna3 == Colors.white)
                                  ? const Color.fromRGBO(244, 81, 141, 1)
                                  : Colors.white;
                          _textColor3 =
                              (_textColor3 == Colors.white)
                                  ? Colors.black
                                  : Colors.white;
                        });
                      },
                      child: Text('Jam Opersional',
                          style: TextStyle(color: _textColor3, fontSize: 14)),
                      style: ElevatedButton.styleFrom(primary: _warna3),
                    ),
                    SizedBox(width: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _warna4 =
                              (_warna4 == Colors.white)
                                  ? const Color.fromRGBO(244, 81, 141, 1)
                                  : Colors.white;
                          _textColor4 =
                              (_textColor4 == Colors.white)
                                  ? Colors.black
                                  : Colors.white;
                        });
                      },
                      child: Text('Customer Service',
                          style: TextStyle(color: _textColor4, fontSize: 14)),
                      style: ElevatedButton.styleFrom(primary: _warna4),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 23, right: 23, bottom: 20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text(
                      'Apa saja fitur-fitur yang tersedia di aplikasi konseling wanita?',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                    trailing: IconButton(
                      icon: Icon(isExpanded ? Icons.remove : Icons.add, color: Color.fromRGBO(244, 81, 141, 1)),
                      onPressed: () {
                        setState(() {
                          isExpanded = !isExpanded;
                        });
                      },
                    ),
                  ),
                  if (isExpanded)
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Teks tambahan di sini...',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
