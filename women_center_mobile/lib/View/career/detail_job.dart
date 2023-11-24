import 'package:flutter/material.dart';

import '../bottomnavigationbar/bottom_navigation_bar.dart';

class DetailJob extends StatefulWidget {
  @override
  _DetailJobState createState() => _DetailJobState();
}

class _DetailJobState extends State<DetailJob> {
  int _selectedIndex = 0;

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
            "Detail Karir",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Color(0xFFF8E8EE),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: Image.asset(
                    'Assets/images/detail-karir1.png',
                    width: 1025,
                    height: 75,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'Assets/images/career1.png',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 15.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Engineer - Jakarta',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'PT OS SELNAJAYA INDONESIA',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 15),
                      Image.asset('Assets/images/briefcase.png', scale: 3),
                      SizedBox(width: 10),
                      Text(
                        'On site | Full time | Entry level', // Ganti dengan teks yang diinginkan
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFFF646464)
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 15),
                      Image.asset('Assets/images/building.columns.circle.png', scale: 3),
                      SizedBox(width: 10),
                      Text(
                        '501 - 1000 employees | Human Resources', // Ganti dengan teks yang diinginkan
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xFFF646464)
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 15),
                      Image.asset('Assets/images/checklist.png', scale: 3),
                      SizedBox(width: 10),
                      Text(
                        'Skils : Cascading Style Sheets (CSS)', // Ganti dengan teks yang diinginkan
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFFF646464)
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        selectedIndex: _selectedIndex, 
        onItemTapped: (index) {
          setState(() {
            _selectedIndex = index;
          });
        }
      ),
    );
  }
}