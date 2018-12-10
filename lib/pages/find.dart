import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../ui/silver_app_bar.dart';
import '../ui/post/post_card.dart';

class FindPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);

    return NestedScrollView(
        headerSliverBuilder: (context, bool innerBoxIsScrolled) {
          return <Widget>[
            MySilverAppBar(),
          ];
        },
        body: _buildList());
  }

  Widget _buildList() {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 0.0),
      itemCount: 15,
      itemBuilder: (BuildContext context, int index) {
        return PostCard();
      },
    );
  }
}
