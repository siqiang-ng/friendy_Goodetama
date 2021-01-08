import 'package:flutter/material.dart';
import 'background.dart';

class BackgroundWLogo extends StatelessWidget {
  final Widget child;

  BackgroundWLogo({
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // TODO: implement build
    return Background(
          body: Container(
            child: Center(
               child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 100,
                    ),
                    Image.asset(
                      'images/friendy_logo.png',
                      width: size.width * 0.8,
                    ),
                    child
                  ],
              ),
            ),
          )
    );
  }
}