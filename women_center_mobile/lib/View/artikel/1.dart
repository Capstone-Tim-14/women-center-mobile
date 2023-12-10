import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContainerColorChanger(),
    );
  }
}

class ContainerColorChanger extends StatefulWidget {
  @override
  _ContainerColorChangerState createState() => _ContainerColorChangerState();
}

class _ContainerColorChangerState extends State<ContainerColorChanger> {
  Color _containerColor1 = Color(0xFFF9F5F6);
  Color _textColor1 = Color(0xFF636363);

  Color _containerColor2 = Color(0xFFF9F5F6);
  Color _textColor2 = Color(0xFF636363);

  Color _containerColor3 = Color(0xFFF9F5F6);
  Color _textColor3 = Color(0xFF636363);

  Color _containerColor4 = Color(0xFFF9F5F6);
  Color _textColor4 = Color(0xFF636363);

  Color _containerColor5 = Color(0xFFF9F5F6);
  Color _textColor5 = Color(0xFF636363);

  Color _containerColor6 = Color(0xFFF9F5F6);
  Color _textColor6 = Color(0xFF636363);

  void _changeColor(int containerNumber) {
    setState(() {
      if (containerNumber == 1) {
        _containerColor1 = _containerColor1 == Color(0xFFF9F5F6)
            ? Color(0xFFF4518D)
            : Color(0xFFF9F5F6);
        _textColor1 =
            _textColor1 == Color(0xFF636363) ? Colors.white : Color(0xFF636363);
      } else if (containerNumber == 2) {
        _containerColor2 = _containerColor2 == Color(0xFFF9F5F6)
            ? Color(0xFFF4518D)
            : Color(0xFFF9F5F6);
        _textColor2 =
            _textColor2 == Color(0xFF636363) ? Colors.white : Color(0xFF636363);
      } else if (containerNumber == 3) {
        _containerColor3 = _containerColor3 == Color(0xFFF9F5F6)
            ? Color(0xFFF4518D)
            : Color(0xFFF9F5F6);
        ;
        _textColor3 =
            _textColor3 == Color(0xFF636363) ? Colors.white : Color(0xFF636363);
        ;
      } else if (containerNumber == 4) {
        _containerColor4 = _containerColor4 == Color(0xFFF9F5F6)
            ? Color(0xFFF4518D)
            : Color(0xFFF9F5F6);
        ;
        _textColor4 =
            _textColor4 == Color(0xFF636363) ? Colors.white : Color(0xFF636363);
        ;
      } else if (containerNumber == 5) {
        _containerColor5 = _containerColor5 == Color(0xFFF9F5F6)
            ? Color(0xFFF4518D)
            : Color(0xFFF9F5F6);
        ;
        _textColor5 =
            _textColor5 == Color(0xFF636363) ? Colors.white : Color(0xFF636363);
        ;
      } else if (containerNumber == 6) {
        _containerColor6 = _containerColor6 == Color(0xFFF9F5F6)
            ? Color(0xFFF4518D)
            : Color(0xFFF9F5F6);
        ;
        _textColor6 =
            _textColor6 == Color(0xFF636363) ? Colors.white : Color(0xFF636363);
        ;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Color Changer'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 30),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () => _changeColor(1),
                  child: Container(
                    width: 120,
                    height: 31,
                    decoration: BoxDecoration(
                      color: _containerColor1,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Text(
                        'Berita Wanita',
                        style: TextStyle(
                          color: _textColor1,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                GestureDetector(
                  onTap: () => _changeColor(2),
                  child: Container(
                    width: 120,
                    height: 31,
                    decoration: BoxDecoration(
                      color: _containerColor2,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Text(
                        'Karier',
                        style: TextStyle(
                          color: _textColor2,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15),
              ],
            ),
            SizedBox(height: 20), // Adding space between the rows

            Row(
              children: [
                GestureDetector(
                  onTap: () => _changeColor(3),
                  child: Container(
                    width: 120,
                    height: 31,
                    decoration: BoxDecoration(
                      color: _containerColor3,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Text(
                        'Gaya Hidup',
                        style: TextStyle(
                          color: _textColor3,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                GestureDetector(
                  onTap: () => _changeColor(4),
                  child: Container(
                    width: 120,
                    height: 31,
                    decoration: BoxDecoration(
                      color: _containerColor4,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Text(
                        'Some Text',
                        style: TextStyle(
                          color: _textColor4,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () => _changeColor(5),
                  child: Container(
                    width: 120,
                    height: 31,
                    decoration: BoxDecoration(
                      color: _containerColor5,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Text(
                        'Gaya Hidup',
                        style: TextStyle(
                          color: _textColor5,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                GestureDetector(
                  onTap: () => _changeColor(6),
                  child: Container(
                    width: 120,
                    height: 31,
                    decoration: BoxDecoration(
                      color: _containerColor6,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Text(
                        'Some Text',
                        style: TextStyle(
                          color: _textColor6,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
