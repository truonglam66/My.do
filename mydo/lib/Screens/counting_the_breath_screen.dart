import 'package:flutter/material.dart';
import 'package:mydo/Screens/session_screen.dart';

import 'portrait_screen.dart';

class CountingTheBreath extends StatelessWidget {
  final String image;
  final String tag;
  final Function press;

  const CountingTheBreath({Key key, this.image, this.tag, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: OrientationBuilder(builder: (context, orientation) {
//          return (MediaQuery.of(context).orientation ==
//              prefix0.Orientation.portrait)
//              ? Portrait(image: this.image, tag: this.tag)
//              : Landscape(image: this.image, tag: this.tag);
          return (Portrait(
            image: 'assets/image/image018.png',
            tag: 'Counting The Breath',
            nexttag: 'Completing',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) {
                  return SessionScreen();
                }),
              );
            },
          ));
        }),
      ),
    );
  }
}
