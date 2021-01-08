import 'package:flutter/material.dart';
import 'package:friendy/components/background.dart';

class ProfileBody extends StatelessWidget {
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
