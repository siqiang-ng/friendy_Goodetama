import 'package:flutter/material.dart';
import 'package:friendy/components/topNavbar.dart';
import 'package:friendy/profilePage/profileBody.dart';
import 'package:friendy/style/palette.dart';
import 'package:friendy/homePage/homeBody.dart';
import 'package:friendy/roomsPage/roomsBody.dart';


class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeBody(),
    ProfileBody(),
    RoomsBody(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TopNavBar(),
        body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Rooms',
          ),
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Palette.kDarkBlue,
        backgroundColor: Palette.kLightBlue,
        onTap: _onItemTapped,
      )
    );
  }
}

