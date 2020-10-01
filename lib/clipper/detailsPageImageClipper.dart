import 'package:flutter/material.dart';

class DetailsPageImageClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var width = size.width;
    var height = size.height;

    var path = Path()
    ..lineTo(0, height*0.65)
    ..arcToPoint(Offset(width*0.1,height*0.75),radius: Radius.circular(width*0.1),clockwise: false)
    ..lineTo(width*0.9, height*0.75)
    ..arcToPoint(Offset(width,height*0.9),radius: Radius.circular(width*0.1),clockwise: true)
    ..lineTo(width, 0)
    ..close();

    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
  
}