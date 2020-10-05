import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundStatus extends CustomPainter{

  double completePercent;

  RoundStatus({@required this.completePercent});

  @override
  void paint(Canvas canvas, Size size) {

    Rect drawingRect = Rect.fromCircle(
      center: Offset(size.width / 2, size.height /2),
      radius: size.width / 2,
    );


    final Paint paint2 = Paint()
    ..color = Colors.black12
    ..style = PaintingStyle.stroke
    ..strokeWidth = 15;

    final Paint paint3 = Paint()
    ..color = Colors.black
    ..style = PaintingStyle.stroke
    ..strokeWidth = 3;

    final Paint paint4 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    final Paint highlight = Paint()
    ..color = Colors.redAccent
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 10;

    canvas.drawCircle(
        Offset(size.width / 2,size.height / 2),
        (size.width / 2)-9, paint4);


    canvas.drawCircle(
        Offset(size.width / 2,size.height / 2),
        (size.width / 2)+9, paint3);


    canvas.drawCircle(
        Offset(size.width / 2,size.height / 2),
        size.width / 2, paint2);

    double arcAngle = 2*pi*(completePercent/100);

    canvas.drawArc(
        drawingRect,
        -pi /2 ,
        arcAngle,
        false,
        highlight);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}