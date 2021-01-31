import 'package:flutter/material.dart';
import 'package:friendy/style/palette.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoard extends StatelessWidget {
  TextStyle dashboardHeaderStyle = GoogleFonts.strait(
    textStyle: TextStyle(
      color: Colors.white,
      decoration: TextDecoration.none,
      fontSize: 18,
      fontWeight: FontWeight.normal
    )
  );

  TextStyle dashboardContentStyle = GoogleFonts.supermercadoOne(
    textStyle: TextStyle(
      color: Colors.white,
      decoration: TextDecoration.none,
      fontSize: 36,
    )
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 100,
        padding: EdgeInsets.all(10.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          shape: BoxShape.rectangle,
          color: Palette.kDarkBlue,
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              Spacer(
                flex: 1
              ),
              Column(
                children: [
                  Text(
                      'Studied',
                      style: dashboardHeaderStyle
                  ),
                  SizedBox(
                    height: 3
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '1',
                        style: dashboardContentStyle
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text(
                          ' hr(s)',
                          style: dashboardHeaderStyle,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(
                flex: 1
              ),
              Column(
                children: [
                  Text(
                    'Task(s)',
                    style: dashboardHeaderStyle,
                  ),
                  SizedBox(
                      height: 3
                  ),
                  Text(
                    '3',
                    style: dashboardContentStyle,
                  ),
                ],
              ),
              Spacer(
                flex: 1
              ),
              Column(
                children: [
                  Text(
                    'Online',
                    style: dashboardHeaderStyle,
                  ),
                  SizedBox(
                      height: 3
                  ),
                  Text(
                    '12',
                    style: dashboardContentStyle,
                  ),
                ],
              ),
              Spacer(
                flex: 1
              )
            ]
          ),
        )
      ),
    );
  }
}
