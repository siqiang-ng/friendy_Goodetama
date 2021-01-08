import 'package:flutter/material.dart';
import 'package:friendy/components/topNavbar.dart';
import 'package:friendy/settingsPage/settingsBody.dart';
import 'package:friendy/style/palette.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.kLightBlue,
      appBar: TopNavBar(),
      body: SettingsBody(),
    );
  }
}
