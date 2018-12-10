import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'find.dart';
import 'saved.dart';
import 'inbox.dart';
import 'notification.dart';
import 'profile.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  BuildContext context;

  var _pages = [
    FindPage(),
    InboxPage(),
    SavedPage(),
    NotificationPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    /*  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.red),
    );
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]); */
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return Scaffold(
      drawer: Drawer(),
      //appBar: AppBar(title: Text("My App"),),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 28.0,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        //fixedColor: Colors.deepOrange,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("Find"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text("Inbox"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border),
            title: Text("Saved"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            title: Text("Notification"),
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}
