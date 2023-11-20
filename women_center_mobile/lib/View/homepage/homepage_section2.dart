import 'package:flutter/material.dart';

class Home2 extends StatelessWidget {
  const Home2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Rekomendasi Karir'),
            TextButton(onPressed: () {}, child: Text('Selengkapnya')),
          ],
        ),
        ListView(
          shrinkWrap: true,
          children: [
            Image.asset("assets/images/register.png"),
            Text("data 1"),
            Text("data 2"),
          ],
        ),
      ],
    );
  }
}
