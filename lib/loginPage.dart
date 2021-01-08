import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:friendy/homePage/home.dart';
import 'package:friendy/style/palette.dart';
import 'package:friendy/components/RaisedGradientButton.dart';
import 'package:friendy/components/bottomNavBar';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 270
            ),
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
            SizedBox (
              height: 30
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
            Text('Forgot Password',
            textAlign: TextAlign.right,
            style: TextStyle(fontStyle: FontStyle.italic)),
            SizedBox (
              height: 90,
            ),
        RaisedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => BottomNavBar()),
            );
          },
          textColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0)
          ),
          padding: const EdgeInsets.all(0.0),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            padding: const EdgeInsets.all(17.0),
            child:
            const Text('LOGIN', style: TextStyle(fontSize: 18)),
          ),
          ),
          ],
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
          builder: (context) => HomePage())
        );
      } catch (e) {
        print(e.message);
      }
    }
  }
}

