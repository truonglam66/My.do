import 'package:flutter/material.dart';
import 'Home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.lime),
      home: new Home(),
    );
  }
}