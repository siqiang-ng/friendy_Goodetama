import 'package:flutter/material.dart';
import 'package:friendy/style/palette.dart';
import 'package:friendy/components/topNavbar.dart';
import 'package:friendy/components/bottomNavbar.dart';
import 'package:friendy/roomsPage/roomsBody.dart';

class RoomsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.kLightBlue,
      appBar: TopNavBar(),
      body: RoomsBody(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}