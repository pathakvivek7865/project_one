import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/find.dart';
import 'pages/inbox.dart';
import 'pages/profile.dart';
import 'pages/saved.dart';

void main() {
  
  runApp(MyApp());
}

/// Returns the color scheme used by this app
MaterialColor appColor() {
  return new MaterialColor(0xFF0498C1, {
    50: new Color(0xFFE1F3F8),
    100: new Color(0xFFB4E0EC),
    200: new Color(0xFF82CCE0),
    300: new Color(0xFF4FB7D4),
    400: new Color(0xFF2AA7CA),
    500: new Color(0xFF0498C1),
    600: new Color(0xFF0390BB),
    700: new Color(0xFF0385B3),
    800: new Color(0xFF027BAB),
    900: new Color(0xFF016A9E)
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: appColor(),
        scaffoldBackgroundColor: Colors.white.withOpacity(1),
        primaryColor: appColor(),
        backgroundColor: Colors.white,
      ),
      //home: HomePage(),
      routes: {
        '/': (BuildContext context) => HomePage(),
        'findPage': (BuildContext context) => FindPage(),
        'savedPage': (BuildContext context) => SavedPage(),
        'inboxPage': (BuildContext context) => InboxPage(),
        'profilePage': (BuildContext context) => ProfilePage(),
      },
    );
  }
}

/* class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: LoginScreen(
          primaryColor: Color(0xFF4aa0d5),
          backgroundColor: Colors.white,
          backgroundImage: new AssetImage("assets/images/full-bloom.png"),
        ),
      ),
    );
  }
}
 */
