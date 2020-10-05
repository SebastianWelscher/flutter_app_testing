import 'package:flutter/material.dart';
import 'package:flutter_app_testing/painter/roundStatus.dart';

class AnimatedCirclePage extends StatefulWidget {
  @override
  _AnimatedCirclePageState createState() => _AnimatedCirclePageState();
}

class _AnimatedCirclePageState extends State<AnimatedCirclePage> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: CustomPaint(
            size: Size(200,200),
            painter: RoundStatus(completePercent: 20),
          ),
        ),
      ),
    );
  }
}