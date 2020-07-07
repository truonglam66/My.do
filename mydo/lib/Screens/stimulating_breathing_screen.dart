import 'package:flutter/material.dart';
import 'package:mydo/Screens/relaxing_breathing_screen.dart';

import 'portrait_screen.dart';

class StimulatingBreathing extends StatelessWidget {
  final String image;
  final String tag;
  final Function press;

  const StimulatingBreathing({Key key, this.image, this.tag, this.press})
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
            image: 'assets/image/image016.jpg',
            tag: 'Stimulating Breathing',
            nexttag: 'Next: Relaxing Breathing',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) {
                  return RelaxingBreathing();
                }),
              );
            },
          ));
        }),
      ),
    );
  }
}
