import 'package:flutter/material.dart';
import 'package:friendy/components/background.dart';

class RoomsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
        body: Container(
          child: Center(
            child: Text("Rooms Page"),
          ),
        )
    );
  }
}
