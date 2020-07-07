import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mydo/Home.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(
            title: "Today",
            svgSrc: "assets/icon/calendar.svg",
          ),
          BottomNavItem(
            title: "All Execises",
            svgSrc: "assets/icon/gym.svg",
            isActive: true,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Home();
              }));
            },
          ),
          BottomNavItem(
            title: "Settings",
            svgSrc: "assets/icon/Settings.svg",
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  @override
  final String svgSrc;
  final String title;
  final Function press;
  final bool isActive;

  const BottomNavItem({
    Key key,
    this.svgSrc,
    this.title,
    this.press,
    this.isActive = false,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(svgSrc),
          Text(
            title,
            style: TextStyle(color: isActive ? Colors.red : Colors.black),
          ),
        ],
      ),
    );
  }
}
