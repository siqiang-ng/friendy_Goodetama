import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'auth/welcome.dart';
import 'package:flutter/services.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FriendyApp());
}


class FriendyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    // TODO: implement build
    return MaterialApp(
      title: 'Friendy App',
      home: WelcomePage(),
    );
  }
}

