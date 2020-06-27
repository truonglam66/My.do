import 'package:flutter/material.dart';

class MyListGrid extends StatefulWidget {
  @override
  _MyListGridState createState() => _MyListGridState();
}

class _MyListGridState extends State<MyListGrid> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GridView.count(
          crossAxisCount: 2, children: List.generate(30, (index) {
        return new Card(
          elevation: 10.0,
          child: new Container(
              child: Align()
          ),
        );
      })),
    );
  }
}
