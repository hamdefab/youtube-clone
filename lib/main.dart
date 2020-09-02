import 'package:flutter/material.dart';
import 'main_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Youtube 01',
      home: MainPage(),
    );
  }
}
