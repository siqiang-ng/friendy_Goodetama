import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:friendy/components/bottomNavbar.dart';
import 'package:friendy/components/topNavbar.dart';
import 'components/blueButton.dart';
import 'loginPage.dart';
import 'package:friendy/components/backgroundWLogo.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => new _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: TopNavBar(
          requiresBack: true,
        ),
        body: BackgroundWLogo(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  validator: (input) {
                    if (input.isEmpty) {
                      return 'Please type an email';
                    }
                  },
                  onSaved: (input) {
                    _email = input;
                  },
                  decoration: InputDecoration(
                      labelText: 'Email',
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(30.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20
                ),
                TextFormField(
                  validator: (input) {
                    if (input.length < 6) {
                      return 'Your password needs to be at least 6 characters';
                    }
                  },
                  onSaved: (input) {
                    _password = input;
                  },
                  decoration: InputDecoration(
                      labelText: 'Password',
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(30.0),
                      ),
                    ),
                  ),
                  obscureText: true,
                ),
                SizedBox (
                  height: 90,
                ),
                BlueButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => BottomNavBar()),
                    );
                  },
                  label: "Sign Up",
                )
              ],
            ),
          ),
        )
    );
  }

  Future<void> signup() async {
    final formState = _formKey.currentState;
    if (formState.validate()) {
      formState.save();
      try {
        UserCredential userCred = await
        FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: _email, password: _password);
        // User user = userCred.user;
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => LoginPage()
        ));
      } catch (e) {
        print(e.message);
      }
    }
  }
}