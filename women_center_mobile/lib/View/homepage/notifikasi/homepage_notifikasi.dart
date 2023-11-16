import 'package:flutter/material.dart';
import 'package:women_center_mobile/View/homepage/notifikasi/homepage_notifikasi_widget.dart';

class HomepageNotifikasi extends StatefulWidget {
  const HomepageNotifikasi({Key? key});

  @override
  State<HomepageNotifikasi> createState() => _HomepageNotifikasiState();
}

class _HomepageNotifikasiState extends State<HomepageNotifikasi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'Notifikasi',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.article),
              title: const Text('Artikel'),
              subtitle: const Text('Ini adalah artikel'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotifikasiList()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.work),
              title: const Text('Karir'),
              subtitle: const Text('Info karir dan pekerjaan'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotifikasiList()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.chat),
              title: const Text('Konseling'),
              subtitle: const Text('Bantuan konseling'),
              onTap: () {
                // Navigasi ke halaman atau fungsi yang berhubungan dengan 'Konseling'
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotifikasiList()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
