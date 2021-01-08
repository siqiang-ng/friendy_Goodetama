import 'package:flutter/material.dart';
import 'package:friendy/profilePage/profileBody.dart';
import 'package:friendy/style/palette.dart';
import 'package:friendy/components/topNavbar.dart';
import 'package:friendy/components/bottomNavbar.dart';
import 'package:friendy/profilePage/profileBody.dart';

class ProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.kLightBlue,
      appBar: TopNavBar(),
      body: profileBody(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}