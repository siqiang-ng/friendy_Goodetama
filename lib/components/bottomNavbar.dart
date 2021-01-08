import 'package:flutter/material.dart';
import 'package:friendy/style/palette.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 1;
  var _route = '/home';

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/profile');
        break;
      case 1:
        Navigator.pushNamed(context, '/home');
        break;
      case 2:
        Navigator.pushNamed(context, '/rooms');
        break;
    }

    setState(() {
      _selectedIndex = index;
    });

//    if (_selectedIndex == 0) {
//      _route = '/profile';
//    }
//    else if (_selectedIndex == 1) {
//      _route = '/home';
//    }
//    else if (_selectedIndex == 2) {
//      _route = '/rooms';
//    }
//    Navigator.pushNamed(context, _route);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Palette.kLightBlue,
      currentIndex: _selectedIndex, // this will be set when a new tab is tapped
      onTap: _onItemTapped,
      items: [
        BottomNavigationBarItem(
          icon: new Icon(Icons.person),
          title: new Text('Profile'),
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          title: new Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          title: new Text('Rooms'),
        ),
      ],
    );
  }
}
