import 'package:flutter/material.dart';

import './post_list_tile.dart';
import './post_image.dart';
import './post_title.dart';
import './post_bottom_section.dart';

class PostCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 4.0, top: 0.0, right: 4.0, bottom: 8.0),
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              offset: Offset(0.0, 1.0),
              blurRadius: 8.0,
              spreadRadius: 1.0)
        ],
        border: Border.all(width: 1.0, color: Colors.grey.withOpacity(0.5)),
      ),
      child: _buildCard(context),
    );
  }

  Widget _buildCard(BuildContext context) {
    // On long press show model
    return Card(
      //clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 0.0,
      semanticContainer: false,
      margin: EdgeInsets.only(bottom: 0.0),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          PostListTile(),
          GestureDetector(
            onTap: () {
              print("Card Selected");
            },
            child: Column(
              children: <Widget>[
                PostImage(),
                PostTitle(),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
            child: Divider(
              color: Colors.grey.withOpacity(0.8),
              height: 2.0,
            ),
          ),
          PostBottomSection(),
        ],
      ),
    );
  }
}
