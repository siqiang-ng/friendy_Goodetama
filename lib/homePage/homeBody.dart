import 'package:flutter/material.dart';
import 'package:friendy/components/background.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Background(
      body: Container(
        child: Center(
          child: Text("Home Page"),
        ),
      )
    );
  }
}