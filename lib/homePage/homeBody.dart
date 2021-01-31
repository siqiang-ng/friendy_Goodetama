import 'package:flutter/material.dart';
import 'package:friendy/components/background.dart';
import 'package:friendy/homePage/components/dashboard.dart';
import 'package:friendy/homePage/components/slidingDigitalClock.dart';
import 'package:friendy/homePage/components/taskList.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:friendy/style/palette.dart';


class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {

  @override
  Widget build(BuildContext context) {
    DateTime currentDate = DateTime.now();
    String formattedDate = DateFormat('EEE, dd MMMM yyy').format(currentDate);

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Background(
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Text(
                  formattedDate,
                  style: GoogleFonts.strait(
                    textStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.blueGrey,
                      decoration: TextDecoration.none
                    )
                  ),
                ),
                SlidingDigitalClock(),
                DashBoard(),
                TaskList(),
                SizedBox(
                  height: 20
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "you have studied for ",
                      style: GoogleFonts.strait(
                        textStyle: TextStyle(
                        fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            decoration: TextDecoration.none
                        )
                      ),
                    ),
                    Text(
                      "20",
                      style: GoogleFonts.strait(
                        textStyle: TextStyle(
                          fontSize: 40,
                          color: Palette.kDarkBlue,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.normal
                        )
                      )
                    ),
                    Text(
                      " days in a row!",
                      style: GoogleFonts.strait(
                          textStyle: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              decoration: TextDecoration.none
                          )
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
