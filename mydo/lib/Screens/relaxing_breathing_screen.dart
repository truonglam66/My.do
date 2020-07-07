import 'package:flutter/material.dart';

import 'counting_the_breath_screen.dart';
import 'portrait_screen.dart';

class RelaxingBreathing extends StatelessWidget {
  final String image;
  final String tag;
  final Function press;

  const RelaxingBreathing({Key key, this.image, this.tag, this.press})
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
            image: 'assets/image/image017.jpg',
            tag: 'Relaxing Breathing',
            nexttag: 'Next: Counting The Breath',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) {
                  return CountingTheBreath();
                }),
              );
            },
          ));
        }),
      ),
    );
  }
}
