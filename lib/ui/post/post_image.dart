import 'package:flutter/material.dart';

class PostImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // todo: Grid images for multiple images
    return Container(
      width: MediaQuery.of(context).size.width - 8,
      height: 200,
      child: Image.asset(
        'assets/images/slider2.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
