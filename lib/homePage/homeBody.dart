import 'package:flutter/material.dart';
import 'package:friendy/components/background.dart';
import 'package:friendy/style/palette.dart';
import 'package:friendy/homePage/components/slidingDigitalClock.dart';
import 'package:friendy/homePage/components/custCheckBox.dart';


class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Slider Digital Clock Demo',
        home: Background(
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                SlidingDigitalClock(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 150,
                    padding: EdgeInsets.all(5.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      shape: BoxShape.rectangle,
                      color: Palette.kLightBlue,
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          CustCheckBox(
                            label: "Presentation Slides",
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
