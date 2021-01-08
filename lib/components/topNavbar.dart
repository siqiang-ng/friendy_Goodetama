import 'package:flutter/material.dart';
import 'package:friendy/style/palette.dart';
import 'package:friendy/settingsPage/settingsPage.dart';

class TopNavBar extends StatelessWidget with PreferredSizeWidget {
  final bool requiresBack;

  TopNavBar({
    this.requiresBack = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Palette.kDarkBlue),
      // The title text which will be shown on the action bar
      leading: leadingIcon(context),
      title: Align(
        alignment: Alignment.center,
        child: Image.asset(
          'images/friendy_logo.png',
          height: 50,
          width: 100,
        ),
      ),
      actions: <Widget>[
        Visibility(
          visible: !requiresBack,
          child: IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
              // do something
            },
          ),
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

  IconButton leadingIcon(BuildContext context) {
    if (!requiresBack) {
      return IconButton(
        icon: const Icon(Icons.notifications),
        onPressed: () {},
      );
    } else {
      return IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop();
        },
      );
    }
  }
}