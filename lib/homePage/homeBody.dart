import 'package:flutter/material.dart';
import 'package:friendy/components/background.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';
import 'package:friendy/style/palette.dart';

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
                DigitalClock(
                  areaAligment: AlignmentDirectional.center,
                    areaHeight: 90,
                    is24HourTimeFormat: false,
                    digitAnimationStyle: Curves.easeOutExpo,
                    hourMinuteDigitTextStyle: TextStyle(
                      color: Palette.kLightBlue,
                      fontSize: 50,
                    ),
                    areaDecoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20),
                        color: Palette.kDarkBlue
                    ),
                    hourMinuteDigitDecoration: BoxDecoration(
                        border: Border.all(color: Palette.kDarkBlue),
                        borderRadius: BorderRadius.circular(5)),
                    secondDigitDecoration: BoxDecoration(
                        border: Border.all(color: Palette.kDarkBlue),
                        borderRadius: BorderRadius.circular(5)),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(50.0),
                  margin: EdgeInsets.fromLTRB(10.0, 1.0, 5.0, 1.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    shape: BoxShape.rectangle,
                    color: Palette.kLightBlue,
                  ),
                  child: CheckboxListTile(
                    value: false,
                    title: Text("Presentation Slides"),
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.black,
                    checkColor: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
