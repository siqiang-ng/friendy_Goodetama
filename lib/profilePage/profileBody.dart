import 'package:flutter/material.dart';
import 'package:friendy/components/background.dart';
import 'package:friendy/style/palette.dart';

class ProfileBody extends StatefulWidget {
  @override
  _ProfileBodyState createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  final TextStyle textStyle = TextStyle(
    color: Palette.kDarkBlue,
    fontWeight: FontWeight.bold,
    fontSize: 18
  );

  @override
  Widget build(BuildContext context) {
    return Background(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                  alignment: Alignment(0.0,2.5),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://thumbs.dreamstime.com/b/creative-illustration-default-avatar-profile-placeholder-isolated-background-art-design-grey-photo-blank-template-mockup-144855718.jpg'
                      ),
                      radius: 60.0,
                    ),
                  )
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Friendy_734",
                style: TextStyle(
                  fontSize: 24.0,
                  color: Palette.kDarkBlue,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text(
                  'Edit Profile',
                  style: textStyle,
                ),
                color: Palette.kLightBlue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(
                      width: 2,
                      color: Palette.kDarkBlue
                    )
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.people_outline, color: Palette.kDarkBlue,),
                  title: Text("Invite a friend",
                    style: textStyle,
                ),
                  trailing: Icon(Icons.keyboard_arrow_right, color: Palette.kDarkBlue,),
                  onTap: () {},
                ),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(200)),
                margin: EdgeInsets.all(10.0),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.help_outline, color: Palette.kDarkBlue,),
                  title: Text("Help & Support",
                    style: textStyle,
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right, color: Palette.kDarkBlue,),
                  onTap: () {},
                ),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(200)),
                margin: EdgeInsets.all(10.0),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.login_outlined, color: Palette.kDarkBlue,),
                  title: Text("Logout",
                    style: textStyle,
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right, color: Palette.kDarkBlue,),
                  onTap: () {},
                ),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(200)),
                margin: EdgeInsets.all(10.0),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.privacy_tip_outlined, color: Palette.kDarkBlue,),
                  title: Text("Privacy",
                    style: textStyle,
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right, color: Palette.kDarkBlue,),
                  onTap: () {},
                ),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(200)),
                margin: EdgeInsets.all(10.0),
              ),
            ],
          ),
        )
    );
  }
}
