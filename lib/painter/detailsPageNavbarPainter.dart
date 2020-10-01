import 'package:flutter/material.dart';

class DetailsPageNavbarPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    var height = size.height;
    var width = size.width;

     Paint paint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.cyanAccent
      ..strokeWidth = 1;

     Path path = Path()
      ..moveTo(0, height*0.45)
      ..lineTo(0, height)
      ..lineTo(width, height)
      ..lineTo(width, 0)
      ..arcToPoint(Offset(width*0.9,height*0.2),radius: Radius.circular(width*0.1),clockwise: true)
      ..lineTo(width*0.15, height*0.2)
      ..arcToPoint(Offset(0,height*0.45),radius: Radius.circular(width*0.15),clockwise: false)
      ..close();

    canvas.drawPath(path, paint);
    //canvas.drawShadow(path, Colors.white, 2.0, true);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
   return true;
  }
}