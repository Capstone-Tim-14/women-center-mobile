import 'dart:async';
import 'package:flutter/material.dart';

class ChangingTextContainer extends StatefulWidget {
  @override
  _ChangingTextContainerState createState() => _ChangingTextContainerState();
}

class _ChangingTextContainerState extends State<ChangingTextContainer> {
  int _textIndex = 0;
  List<String> _texts = [
    'Teks 1',
    'Teks 2',
    'Teks 3',
    'Teks 4',
    // Tambahkan teks lain sesuai kebutuhan
  ];

  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 3), (Timer t) {
      setState(() {
        _textIndex = (_textIndex + 1) % _texts.length;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.blue, // Warna container
      child: Center(
        child: AnimatedSwitcher(
          duration: Duration(seconds: 1), // Durasi transisi
          switchInCurve: Curves.easeInOut,
          switchOutCurve: Curves.easeInOut,
          transitionBuilder: (child, animation) {
            var begin = Offset(1.0, -1.0);
            var end = Offset.zero;

            // Ganti arah transisi untuk teks baru
            if (_textIndex % 2 == 1) {
              begin = Offset(-1.0, 1.0);
              end = Offset.zero;
            }

            return SlideTransition(
              position: Tween<Offset>(
                begin: begin,
                end: end,
              ).animate(animation),
              child: child,
            );
          },
          child: Text(
            _texts[_textIndex],
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            key: UniqueKey(), // Key unik untuk AnimatedSwitcher
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Changing Text Container'),
        ),
        body: Center(
          child: ChangingTextContainer(),
        ),
      ),
    );
  }
}
