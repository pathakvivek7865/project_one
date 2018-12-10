import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InboxPage extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
          SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);

      return Center(child: Text("Inbox Page"),);
    }
}