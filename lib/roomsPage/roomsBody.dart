import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:friendy/components/background.dart';
import 'package:friendy/style/palette.dart';

class RoomsBody extends StatefulWidget {
  @override
  _RoomsBodyState createState() => _RoomsBodyState();
}

class _RoomsBodyState extends State<RoomsBody> {
  final TextStyle mainTextStyle = TextStyle(
      color: Palette.kDarkBlue,
      fontWeight: FontWeight.bold,
      fontSize: 18
  );

  final NetworkImage avatarImage = NetworkImage(
      'https://thumbs.dreamstime.com/b/creative-illustration-default-avatar-profile-placeholder-isolated-background-art-design-grey-photo-blank-template-mockup-144855718.jpg'
  );

  @override
  Widget build(BuildContext context) {
    return Background(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: avatarImage,
                ),
                title: Text("Goodetama",
                  style: mainTextStyle,
                ),
                subtitle: Text("Hello!"),
                onTap: () {},
              ),
              elevation: 0,
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: avatarImage,
                ),
                title: Text("Study Now",
                  style: mainTextStyle,
                ),
                subtitle: Text("Hello!"),
                onTap: () {},
              ),
              elevation: 0,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(1.0, 300.0 , 5.0, 5.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.add_comment_outlined),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}