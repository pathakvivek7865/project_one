import 'package:flutter/material.dart';

class PostTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      child: Text(
        "This is very exiciting work to do...",
        style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}
