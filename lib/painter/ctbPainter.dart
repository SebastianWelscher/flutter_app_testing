import 'package:flutter_app_testing/imports/imports.dart';

class CTBPainter extends CustomPainter{

  final Color color;
  CTBPainter({this.color});

  @override
  void paint(Canvas canvas, Size size) {

    var width = size.width;
    var height = size.height;

    Paint paint = Paint()
        ..color = color
        ..strokeWidth = 5;

    Path path = Path()
    ..lineTo(0, height * 0.2)
    ..quadraticBezierTo(width * 0.25, height, width * 0.5, height)
    ..quadraticBezierTo(width * 0.75, height, width, height * 0.2)
    ..lineTo(width, 0)
    ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}