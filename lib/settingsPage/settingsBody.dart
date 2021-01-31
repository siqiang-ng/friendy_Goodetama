import 'package:flutter/material.dart';
import 'package:friendy/style/palette.dart';
import 'package:friendy/components/background.dart';
import 'package:friendy/homePage/homeBody.dart';

class SettingsBody extends StatelessWidget {
  TextStyle contentFontStyle = TextStyle(
      fontWeight: FontWeight.bold,
      color: Palette.kDarkBlue,
      fontSize: 19
  );

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
                        style: contentFontStyle
                    ),
                    onTap: () {},
                  ),
                  color: Palette.kSkyBlue,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.local_phone,
                                  color: Palette.kDarkBlue),
                    title: Text('Calls',
                        style: contentFontStyle
                  ),
                    onTap: () {},
                  ),
                  color: Palette.kSkyBlue,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.sms,
                                  color: Palette.kDarkBlue),
                    title: Text('Messages',
                            style: contentFontStyle
                  ),
                    onTap: () {},
                  ),
                  color: Palette.kSkyBlue,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.app_settings_alt,
                                  color: Palette.kDarkBlue),
                    title: Text('Notifications',
                        style: contentFontStyle
                    ),
                    onTap: () {},
                  ),
                  color: Palette.kSkyBlue,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.help_outline,
                                  color: Palette.kDarkBlue),
                    title: Text('Help & Feedback',
                        style: contentFontStyle
                    ),
                    onTap: () {},
                  ),
                  color: Palette.kSkyBlue,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ],
          )
          ),
        );
  }
}