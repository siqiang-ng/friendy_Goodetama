import 'package:flutter/material.dart';
import 'package:friendy/components/background.dart';

class roomsBody extends StatefulWidget {
  @override
  _roomsBodyState createState() => _roomsBodyState();
}

class _roomsBodyState extends State<roomsBody> {
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
