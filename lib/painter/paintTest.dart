import 'package:flutter/material.dart';
import 'package:flutter_app_testing/imports/imports.dart';

class PaintTest extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    var height = size.height;
    var width = size.width;

    Paint paint = Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2
    ..color = Colors.yellow;

    canvas.drawLine(Offset(width*0.05,0), Offset(0,height*0.1), paint);
    canvas.drawLine(Offset(width*0.1,0), Offset(0,height*0.2), paint);
    canvas.drawLine(Offset(width*0.15,0), Offset(0,height*0.3), paint);
    canvas.drawLine(Offset(width*0.2,0), Offset(0,height*0.4), paint);
    canvas.drawLine(Offset(width*0.25,0), Offset(0,height*0.5), paint);
    canvas.drawLine(Offset(width*0.3,0), Offset(0,height*0.6), paint);
    canvas.drawLine(Offset(width*0.35,0), Offset(0,height*0.7), paint);
    canvas.drawLine(Offset(width*0.4,0), Offset(0,height*0.8), paint);
    canvas.drawLine(Offset(width*0.45,0), Offset(0,height*0.9), paint);
    canvas.drawLine(Offset(width*0.5,0), Offset(0,height), paint);
    canvas.drawLine(Offset(width*0.55,0), Offset(width*0.05,height), paint);
    canvas.drawLine(Offset(width*0.6,0), Offset(width*0.1,height), paint);
    canvas.drawLine(Offset(width*0.65,0), Offset(width*0.15,height), paint);
    canvas.drawLine(Offset(width*0.7,0), Offset(width*0.2,height), paint);
    canvas.drawLine(Offset(width*0.75,0), Offset(width*0.25,height), paint);
    canvas.drawLine(Offset(width*0.8,0), Offset(width*0.3,height), paint);
    canvas.drawLine(Offset(width*0.85,0), Offset(width*0.35,height), paint);
    canvas.drawLine(Offset(width*0.9,0), Offset(width*0.4,height), paint);
    canvas.drawLine(Offset(width*0.95,0), Offset(width*0.45,height), paint);
    canvas.drawLine(Offset(width,0), Offset(width*0.5,height), paint);
    canvas.drawLine(Offset(width,height*0.1), Offset(width*0.55,height), paint);
    canvas.drawLine(Offset(width,height*0.2), Offset(width*0.6,height), paint);
    canvas.drawLine(Offset(width,height*0.3), Offset(width*0.65,height), paint);
    canvas.drawLine(Offset(width,height*0.4), Offset(width*0.7,height), paint);
    canvas.drawLine(Offset(width,height*0.5), Offset(width*0.75,height), paint);
    canvas.drawLine(Offset(width,height*0.6), Offset(width*0.8,height), paint);
    canvas.drawLine(Offset(width,height*0.7), Offset(width*0.85,height), paint);
    canvas.drawLine(Offset(width,height*0.8), Offset(width*0.9,height), paint);
    canvas.drawLine(Offset(width,height*0.9), Offset(width*0.95,height), paint);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
   return true;
  }
}