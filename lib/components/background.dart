import 'package:flutter/material.dart';
import 'package:friendy/style/palette.dart';

class Background extends StatelessWidget {
  final Widget body;

  Background({
    this.body
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget> [
          Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white,
                Palette.kLightBlue
              ],
            ),
          ),
        ),
          body
      ]
    );
  }
}

