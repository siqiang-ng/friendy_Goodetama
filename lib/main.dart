import 'package:flutter/material.dart';
import 'file:///C:/Users/siqiang/OneDrive/Desktop/friendy_Goodetama/lib/loginPage/loginPage.dart';
import 'package:firebase_core/firebase_core.dart';


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
    );
  }
}

