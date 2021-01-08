import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:friendy/loginPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:friendy/homePage/home.dart';
import 'package:friendy/profilePage/profile.dart';
import 'package:friendy/roomsPage/rooms.dart';


void main() {
  runApp(FriendyApp());
}

class FriendyApp extends StatelessWidget {
  void initialize() async {
    await Firebase.initializeApp();
  }

  @override
  Widget build(BuildContext context) {
    initialize();
    // TODO: implement build
    return MaterialApp(
      title: 'Friendy App',
      home: LoginPage(),
      routes: {
        '/home': (context) => HomePage(),
        '/profile': (context) => ProfilePage(),
        '/rooms': (context) => RoomsPage(),
      },
    );
  }
}

