import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:friendy/components/background.dart';
import 'package:friendy/style/palette.dart';

class CreateGroupBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                top: 25
              ),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'NEW ROOM',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Palette.kDarkBlue
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Palette.kMiddleBlue,
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Container(
                      width: size.width * 0.7,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Type group name here...'
                        )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: size.width * 0.9,
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 2,
                      color: Palette.kMiddleBlue.withOpacity(0.5),
                    ),
                  ),
                  CircleAvatar(
                    radius: 30,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.done,
                        color: Colors.white
                      ),
                    ),
                    backgroundColor: Palette.buttonBlue,
                  )
                ],
              ),
            ),
          ],
        )
      )
    );
  }
}
