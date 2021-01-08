import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:friendy/auth/components/alertMessage.dart';
import 'package:friendy/auth/components/blueButton.dart';
import 'package:friendy/components/backgroundWLogo.dart';
import '../components/bottomNavbar.dart';
import '../components/topNavbar.dart';
import 'package:friendy/style/palette.dart';
import 'package:auto_size_text/auto_size_text.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email, _password, _error;
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
        errorMessage: _error,
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                validator: (input) {
                  if (input.isEmpty) {
                    return 'Email cannot be empty.';
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
              SizedBox (
                height: 20
              ),
              TextFormField(
                validator: (input) {
                  if (input.isEmpty) {
                    return 'Password cannot be empty.';
                  }
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
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('forgot password?',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Palette.kDarkBlue
                    )
                  ),
                ),
              ),
              SizedBox (
                height: 70,
              ),
              BlueButton(
                onPressed: login,
                label: "Login",
              )
            ],
          ),
        ),
      )
    );
  }

  Future<void> login() async {
    final formState = _formKey.currentState;
    if (formState.validate()) {
      formState.save();
      try {
        UserCredential user = await
          FirebaseAuth.instance.signInWithEmailAndPassword(
            email: _email, password: _password);
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => BottomNavBar())
        );
      } catch (e) {
        setState(() {
          _error = e.message;
        });
        print(e.message);
      }
    }
  }
}

