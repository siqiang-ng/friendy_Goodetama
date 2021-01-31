import 'package:flutter/material.dart';
import 'package:friendy/auth/components/alertMessage.dart';
import 'background.dart';

class BackgroundWLogo extends StatelessWidget {
  final Widget child;
  final String errorMessage;
  final double heightProportion;

  BackgroundWLogo({
    this.child,
    this.errorMessage,
    this.heightProportion,
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
                AlertMessage(
                  errorMessage: errorMessage
                ),
                SizedBox(
                  height: size.height * heightProportion
                ),
                Image.asset(
                  'images/friendy_logo.png',
                  width: size.width * 0.6,
                ),
                child
              ],
            ),
          ),
        )
    );
  }
}