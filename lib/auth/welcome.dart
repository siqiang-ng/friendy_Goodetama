import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:friendy/components/backgroundWLogo.dart';
import 'package:friendy/auth/loginPage.dart';
import 'package:friendy/auth/components/blueButton.dart';
import 'signup.dart';
import 'package:friendy/style/palette.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: BackgroundWLogo(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50
              ),
              BlueButton(
                onPressed: () {
                  navigateToLogin();
                },
                label: 'Sign In'
              ),
              SizedBox(
                height: 20
              ),
              BlueButton(
                onPressed: () {
                  navigateToSignup();
                },
                label: 'Sign Up'
              ),
            ],
          )
        )
    );
  }

  void navigateToLogin() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => LoginPage(),
          fullscreenDialog: true));
  }

  void navigateToSignup() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => SignupPage(),
            fullscreenDialog: true));
  }
}