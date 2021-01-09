import 'package:flutter/material.dart';
import 'package:friendy/components/background.dart';
import 'package:friendy/style/palette.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Background(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.fromLTRB(10.0, 1.0, 5.0, 1.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                shape: BoxShape.rectangle,
                color: Palette.kDarkBlue,
              ),
              child: Text("Container 1",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              height: 5,
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
                //textAlign: TextAlign.start,
                //style: TextStyle(
                  //fontSize: 18,
                //),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
