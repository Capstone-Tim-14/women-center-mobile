import 'package:flutter/material.dart';
import 'package:women_center_mobile/View/homepage/homepage_section3.dart';

class HomepageSection extends StatefulWidget {
  const HomepageSection({super.key});

  @override
  State<HomepageSection> createState() => _HomepageSectionState();
}

class _HomepageSectionState extends State<HomepageSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // panggil halaman section disini
        children: [
            //homepage 1
            //homepage 2
            //homepage 3
            Homepage3(),
        ],
        
      ),
    );
  }
}