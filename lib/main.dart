import 'package:flutter/material.dart';
import 'package:friendy/loginPage/loginPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'welcome.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FriendyApp());
}

class FriendyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Friendy App',
      home: WelcomePage(),
    );
  }
}

