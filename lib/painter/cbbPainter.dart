import 'package:flutter/material.dart';

class CBBPainter extends CustomPainter{

  final Color color;

  CBBPainter({this.color});
  
  @override
  void paint(Canvas canvas, Size size) {
  
    var height = size.height;
    var width = size.width;

    Paint paint = Paint()
    ..color = color
    ..strokeWidth = 2;

    Path myPath = Path()
    ..moveTo(0, 20)
    ..quadraticBezierTo(width * 0.2, 0, width * 0.35, 0)
    ..quadraticBezierTo(width * 0.4, 0, width * 0.4, 20)
    ..arcToPoint(Offset(width * 0.6,20), radius: Radius.circular(10),clockwise: false)
    ..quadraticBezierTo(width * 0.6, 0, width * 0.65, 0)
    ..quadraticBezierTo(width * 0.8, 0, width, 20)
    ..lineTo(width, height)
    ..lineTo(0, height)
    ..close();

    canvas.drawPath(myPath, paint);
    
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    
    return false;
  }
}