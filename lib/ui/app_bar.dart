import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      width: MediaQuery.of(context).size.width - 5.0,
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top + 8.0, left: 5.0, right: 5.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              offset: Offset(0.0, 1.0),
              blurRadius: 10.0,
              spreadRadius: 1.0)
        ],
        border: Border.all(width: 1.0, color: Colors.grey.withOpacity(0.5)),
      ),
      child: ListTile(
        leading: Icon(
          Icons.dehaze,
          color: Colors.black,
        ),
        trailing: Icon(
          Icons.sort,
          color: Colors.black,
        ),
      ),
    );
  }
}
