import 'package:flutter/material.dart';
import 'package:friendy/style/palette.dart';

class TopNavBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Palette.kDarkBlue),
      // The title text which will be shown on the action bar
      leading: IconButton(
        icon: const Icon(Icons.notifications),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Align(
        alignment: Alignment.center,
        child: Image.asset(
          'images/friendy_logo.png',
          height: 50,
          width: 100,
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingsPage()),
            );
            // do something
          },
        )
      ],
      backgroundColor: Palette.kLightBlue,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize {
    return Size.fromHeight(50.0);
  }
}