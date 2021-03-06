import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Portrait extends StatelessWidget {
  final String image, tag, nexttag;
  final Function press;

  Portrait(
      {@required this.image, @required this.tag, this.press, this.nexttag});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Hero(
              tag: this.tag,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: Image.asset(
                  this.image,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Positioned(
              top: 40,
              right: 20,
              child: GestureDetector(
                child: Container(
                  padding: EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(0, 0, 0, 0.7),
                  ),
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 30.0,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
        Container(
          //padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
          height: size.height - 200.0,
          width: size.width,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Text(
                      this.tag,
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      this.nexttag,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.grey[300],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: CircularPercentIndicator(
                      radius: size.width * 0.60,
                      animation: true,
                      animationDuration: 1200,
                      lineWidth: 16.0,
                      percent: 0.86,
                      center: new Text(
                        '43',
                        style: TextStyle(
                          fontSize: 45.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.grey[400],
                        ),
                      ),
                      backgroundColor: Colors.grey[300],
                      circularStrokeCap: CircularStrokeCap.round,
                      linearGradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(190, 130, 255, 1.0),
                          Color.fromRGBO(105, 139, 255, 1.0),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 80.0,
                    height: 55.0,
                    margin: EdgeInsets.only(right: 10.0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(232, 242, 248, 1.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Icon(
                      Icons.pause,
                      color: Color.fromRGBO(82, 126, 255, 1.0),
                      size: 35.0,
                    ),
                  ),
                  InkWell(
                    onTap: press,
                    child: Container(
                      width: size.width - 130.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(232, 242, 248, 1.0),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Center(
                        child: Text(
                          'Next',
                          style: TextStyle(
                            color: Color.fromRGBO(82, 126, 255, 1.0),
                            fontSize: 18.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
