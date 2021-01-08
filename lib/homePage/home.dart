import 'package:flutter/material.dart';
import 'package:friendy/style/palette.dart';
import 'package:friendy/components/topNavbar.dart';
import 'package:friendy/homePage/homeBody.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.kLightBlue,
      appBar: TopNavBar(),
      body: HomeBody()
    );
  }
}