import 'package:flutter/material.dart';
import 'package:newsapp/pageone.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: newspage(),
    );
  }
}
