import 'package:flutter/material.dart';
import 'package:friendy/style/palette.dart';

class BlueButton extends StatelessWidget {
  final Function onPressed;
  final Text label;

  BlueButton({
    @required this.onPressed,
    this.label
  });

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      child: RaisedButton(
        onPressed: onPressed,
        padding: const EdgeInsets.all(0.0),
        child: Container(
          width: 150,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Colors.lightBlue[300],
                Palette.buttonBlue
              ],
            ),
          ),
          padding: const EdgeInsets.all(12.0),
          child: Center(
              child: label
          ),
        ),
      ),
    );
  }
}
