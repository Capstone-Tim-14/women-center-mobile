import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuillEditorScreen(),
    );
  }
}

class QuillEditorScreen extends StatefulWidget {
  @override
  _QuillEditorScreenState createState() => _QuillEditorScreenState();
}

class _QuillEditorScreenState extends State<QuillEditorScreen> {
  final QuillController _controller = QuillController.basic();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quill Editor'),
      ),
      body: Center(
        child: Container(margin: EdgeInsets.all(8.0), child: Container()),
      ),
    );
  }
}
