import 'package:flutter/material.dart';
import 'MyListGrid.dart' as mylistgridview;
import 'TagsGrid.dart' as tagsgridview;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Grid View"),
          bottom: new TabBar(
            controller: controller,
            tabs: [
              new Tab(text: ("Danh sách của bạn"),),
              new Tab(text: ("Thẻ của bạn"),),
            ],
          ),
        ),
        body:new TabBarView(
          controller: controller,
          children:<Widget> [
            new mylistgridview.MyListGrid(),
            new tagsgridview.TagsGrid(),
          ],
        )
    );
  }
}
