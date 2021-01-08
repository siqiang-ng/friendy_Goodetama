import 'package:flutter/material.dart';
import 'package:friendy/components/background.dart';

class profileBody extends StatefulWidget {
  @override
  _profileBodyState createState() => _profileBodyState();
}

class _profileBodyState extends State<profileBody> {
  @override
  Widget build(BuildContext context) {
    return Background(
        body: Container(
          child: Center(
            child: Text("Profile Page"),
          ),
        )
    );
  }
}
