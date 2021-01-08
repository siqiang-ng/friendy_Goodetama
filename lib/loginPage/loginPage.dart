import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../components/bottomNavbar.dart';

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
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Form(
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
                labelText: 'Email'
              ),
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
                  labelText: 'Password'
              ),
              obscureText: true,
            ),
            RaisedButton(
              onPressed: login,
              child: Text("Sign in")
            )
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
          builder: (context) => BottomNavBar())
        );
      } catch (e) {
        print(e.message);
      }
    }
  }
}