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
  int _selectedIndex = 1;
  bool isRoomsPage = false;

  static List<Widget> _widgetOptions = <Widget>[
    ProfileBody(),
    HomeBody(),
    RoomsBody(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 2) {
        isRoomsPage = true;
      }
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
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: _getFloatingButton()
    );
  }

  Widget _getFloatingButton() {
    if (!isRoomsPage) {
      return Container();
    } else {
      return FloatingActionButton(
        onPressed:(){},
        tooltip: 'Create a Room',
        child: Icon(Icons.add_comment_outlined),
        backgroundColor: Palette.buttonBlue,
      );
    }
  }
}

