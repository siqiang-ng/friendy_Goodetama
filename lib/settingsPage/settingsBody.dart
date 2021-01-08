import 'package:flutter/material.dart';
import 'package:friendy/style/palette.dart';
import 'package:friendy/components/background.dart';
import 'package:friendy/homePage/homeBody.dart';

class SettingsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Background(
        body: Container(
            padding: EdgeInsets.all(10.0),
          child: ListView(
              children: <Widget>[
                Card(
                  child: ListTile(
                    leading: Icon(Icons.language,
                                  color: Palette.kDarkBlue
                                  ),
                    title: Text('Language',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Palette.kDarkBlue)
                    ),
                    onTap: () {},
                  ),
                  color: Palette.kLightBlue,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.local_phone,
                                  color: Palette.kDarkBlue),
                    title: Text('Calls',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Palette.kDarkBlue)
                  ),
                    onTap: () {},
                  ),
                  color: Palette.kLightBlue,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.sms,
                                  color: Palette.kDarkBlue),
                    title: Text('Messages',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Palette.kDarkBlue)
                  ),
                    onTap: () {},
                  ),
                  color: Palette.kLightBlue,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.app_settings_alt,
                                  color: Palette.kDarkBlue),
                    title: Text('Notifications',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Palette.kDarkBlue)
                    ),
                    onTap: () {},
                  ),
                  color: Palette.kLightBlue,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.help_outline,
                                  color: Palette.kDarkBlue),
                    title: Text('Help & Feedback',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Palette.kDarkBlue)
                    ),
                    onTap: () {},
                  ),
                  color: Palette.kLightBlue,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ],
          )
          ),
        );
  }
}