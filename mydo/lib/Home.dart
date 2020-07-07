import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mydo/Screens/DR_screen.dart';
import 'package:mydo/Screens/meditation_screen.dart';
import 'package:mydo/Screens/yoga_screen.dart';
import 'package:mydo/Widgets/search_bar.dart';

import 'Screens/session_screen.dart';
import 'Widgets/bottom_nav_bar.dart';
import 'Widgets/category_card.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        bottomNavigationBar: BottomNavBar(),
        body: Stack(
          children: <Widget>[
            Container(
              height: size.height * .45,
              decoration: BoxDecoration(
                  color: Color(0xFFF5CEB8),
                  image: DecorationImage(
                      image:
                          AssetImage("assets/image/undraw_pilates_gpdb.png"))),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 52,
                        width: 52,
                        decoration: BoxDecoration(
                          color: Color(0xFFF2BEA1),
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset("assets/icon/menu.svg"),
                      ),
                    ),
                    Text(
                      "Good morning \nLam Truong",
                      style: Theme.of(context)
                          .textTheme
                          .display1
                          .copyWith(fontWeight: FontWeight.w900),
                    ),
                    SearchBar(),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: .85,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        children: <Widget>[
                          CategoryCard(
                            title: "Diet Recommendation",
                            svgSrc: "assets/icon/Hamburger.svg",
                            press: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return DRScreen();
                              }));
                            },
                          ),
                          CategoryCard(
                            title: "Kegel Execises",
                            svgSrc: "assets/icon/Excrecises.svg",
                            press: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return SessionScreen();
                              }));
                            },
                          ),
                          CategoryCard(
                            title: "Meditation",
                            svgSrc: "assets/icon/Meditation.svg",
                            press: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return MeditationScreen();
                              }));
                            },
                          ),
                          CategoryCard(
                            title: "Yoga",
                            svgSrc: "assets/icon/yoga.svg",
                            press: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return YogaScreen();
                              }));
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}


