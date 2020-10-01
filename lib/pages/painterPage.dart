import 'package:flutter/material.dart';
import 'package:flutter_app_testing/painter/paintTest.dart';

class PainterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Container(
            height: 200,
            width: 400,
            child: Card(
            child: CustomPaint(
             painter: PaintTest(),
            ),
            ),
          ),
        ),

      ),
    );
  }
}
