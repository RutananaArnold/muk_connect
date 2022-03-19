import 'package:flutter/material.dart';
import 'package:muk_connect/screens/colleges.dart';
import 'package:muk_connect/screens/home.dart';
import 'package:muk_connect/screens/show_room.dart';
import 'package:muk_connect/screens/user-profile/exporter.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  List<Widget> tabs = [
    Home(),
    ShowRoom(),
    Colleges(),
    UserInfoScreen(),
  ];

  // var titles = [
  //   'MukConnect',
  //   'Show Room',
  //   'Colleges',
  //   'My Profile',
  // ];

  int currentTabIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   title: AnimatedSwitcher(
      //     duration: Duration(milliseconds: 1000),
      //     child: Text(
      //       titles[currentTabIndex],
      //       key: Key(titles[currentTabIndex]),
      //     ),
      //   ),
      // ),
      body: AnimatedSwitcher(
        child: tabs[currentTabIndex],
        duration: Duration(milliseconds: 1000),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue[900],
        unselectedItemColor: Colors.white60,
        onTap: _onItemTapped,
        currentIndex: currentTabIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_rounded,
              size: 35.0,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stream),
            label: 'ShowRoom',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school_rounded),
            label: 'Colleges',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
