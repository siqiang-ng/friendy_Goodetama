import 'package:flutter/material.dart';
import 'package:friendy/components/topNavbar.dart';
import 'package:friendy/countdownPage/countdownBody.dart';
import 'package:friendy/style/palette.dart';

class CountdownPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.kLightBlue,
      appBar: TopNavBar(
        requiresBack: true,
      ),
      body: CountdownBody(),
    );
  }
}