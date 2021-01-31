import 'package:flutter/material.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';
import 'package:google_fonts/google_fonts.dart';

class SlidingDigitalClock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DigitalClock(
      areaAligment: AlignmentDirectional.center,
      areaHeight: 80,
      is24HourTimeFormat: false,
      digitAnimationStyle: Curves.easeOutExpo,
      hourMinuteDigitTextStyle: GoogleFonts.strait(
          textStyle: TextStyle(
            color: Colors.blueGrey,
            fontSize: 50,
            decoration: TextDecoration.none
          )
      ),
      amPmDigitTextStyle: GoogleFonts.strait(
        textStyle: TextStyle(
          color: Colors.blueGrey,
          fontSize: 25,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none
        )
      ),
      secondDigitTextStyle: GoogleFonts.strait(
        textStyle: TextStyle(
          color: Colors.blueGrey,
          fontSize: 25,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none
        )
      ),
      areaDecoration: BoxDecoration(
          color: Colors.transparent
      ),
      hourMinuteDigitDecoration: BoxDecoration(
          color: Colors.transparent
      ),
      secondDigitDecoration: BoxDecoration(
          color: Colors.transparent
      ),
    );
  }
}
