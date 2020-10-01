import 'package:flutter/material.dart';

class DetailsPageNavbarClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {

    var height = size.height;
    var width = size.width;

    Path path = Path()
      ..moveTo(0, height*0.45)
      ..lineTo(0, height)
      ..lineTo(width, height)
      ..lineTo(width, 0)
      ..arcToPoint(Offset(width*0.9,height*0.2),radius: Radius.circular(width*0.1),clockwise: true)
      ..lineTo(width*0.15, height*0.2)
      ..arcToPoint(Offset(0,height*0.45),radius: Radius.circular(width*0.15),clockwise: false)
      ..close();

    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}