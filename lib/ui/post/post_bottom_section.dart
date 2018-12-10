import 'package:flutter/material.dart';

class PostBottomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0, bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                IconButton(
                  padding: EdgeInsets.all(0.0),
                  icon: Icon(
                    Icons.favorite,
                    size: 32.0,
                  ),
                  color: Colors.pink,
                  onPressed: () {},
                ),
                Text(
                  "324",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.bookmark,
              color: Colors.orange,
              size: 32.0,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
