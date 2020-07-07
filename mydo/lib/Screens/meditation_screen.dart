import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mydo/Screens/session_screen.dart';
import 'package:mydo/Widgets/bottom_nav_bar.dart';
import 'package:mydo/Widgets/search_bar.dart';

import 'kegel_execises_screen.dart';

class MeditationScreen extends StatelessWidget {
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
                color: Colors.cyan,
                image: DecorationImage(
                  image: AssetImage("assets/image/meditation_bg.png"),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      Text(
                        "Mediation",
                        style: Theme.of(context)
                            .textTheme
                            .display1
                            .copyWith(fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "3-10 MIN Course",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                          width: size.width * .6,
                          child: Text(
                              "Life happier and healthier by learning the fundamentals of meditation and mindfulness")),
                      SizedBox(
                        width: size.width * .5,
                        child: SearchBar(),
                      ),
                      Wrap(
                        spacing: 20,
                        runSpacing: 20,
                        children: <Widget>[
                          SessionCard(
                            sessionNum: 1,
                            isDone: true,
                            press: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return SessionScreen();
                              }));
                            },
                          ),
                          SessionCard(
                            sessionNum: 2,
                            isDone: true,
                            press: () {},
                          ),
                          SessionCard(
                            sessionNum: 3,
                            isDone: true,
                            press: () {},
                          ),
                          SessionCard(
                            sessionNum: 4,
                            isDone: true,
                            press: () {},
                          ),
                          SessionCard(
                            sessionNum: 5,
                            isDone: true,
                            press: () {},
                          ),
                          SessionCard(
                            sessionNum: 6,
                            isDone: true,
                            press: () {},
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Meditation",
                          style: Theme.of(context)
                              .textTheme
                              .title
                              .copyWith(fontWeight: FontWeight.bold)),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        padding: EdgeInsets.all(10),
                        height: 90,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 17),
                                blurRadius: 23,
                                spreadRadius: -13,
                                color: Colors.black12,
                              )
                            ]),
                        child: Row(
                          children: <Widget>[
                            SvgPicture.asset(
                                "assets/icon/Meditation_women_small.svg"),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Basic 2",
                                    style: Theme.of(context).textTheme.subtitle,
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: SvgPicture.asset("assets/icon/Lock.svg"),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
