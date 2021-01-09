import 'package:flutter/material.dart';
import 'package:friendy/components/background.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';
import 'package:friendy/style/palette.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
              ],
            ),
          ),
        ));
  }
}
