import 'package:flutter/material.dart';

class PostListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      leading: _buildLeading(),
      title: _buildTitle(),
      subtitle: _buildSubtitle(context),
      trailing: _buildTimer(context),
      onTap: (){
        Navigator.pushNamed(context, 'profilePage');
      },
    );
  }

  Widget _buildLeading() {
    return CircleAvatar(
      backgroundImage: new Image.asset('assets/images/slider1.jpg').image,
      radius: 28.0,
    );
  }

  Widget _buildTitle() {
    return Text(
      "Vivek Pathak",
      style: TextStyle(fontSize: 22.0),
    );
  }

  Widget _buildSubtitle(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 0.0, right: 75.0),
      child: Container(
        decoration: BoxDecoration(
            border:
                Border.all(width: 1.0, color: Theme.of(context).accentColor),
            borderRadius: BorderRadius.circular(7.0)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 0.0),
              padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.5),
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Text(
                "4.0",
                style: TextStyle(color: Colors.white, fontSize: 12.0),
              ),
            ),
            SizedBox(
              width: 5.0,
            ),
            Container(
              padding: EdgeInsets.only(right: 5.0),
              child: Text("Rating",style: TextStyle(color: Colors.black),),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTimer(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 8.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(width: 2.0, color: Theme.of(context).accentColor)),
      child: Text(
        "3:45 min",
        style: TextStyle(
            color: Theme.of(context).accentColor,
            fontSize: 15.0,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
