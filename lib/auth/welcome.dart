import 'package:flutter/material.dart';
import 'package:friendy/components/backgroundWLogo.dart';
import 'package:friendy/auth/loginPage.dart';
import 'signup.dart';

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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 50
              ),
              RaisedButton(
                onPressed: (){
                  navigateToLogin();
                },
                child: Text('Sign In'),
              ),
              RaisedButton(
                onPressed: () {
                  navigateToSignup();
                },
                child: Text('Sign Up'),
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