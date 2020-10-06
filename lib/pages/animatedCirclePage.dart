import 'package:flutter/material.dart';
import 'package:flutter_app_testing/painter/roundStatus.dart';

class AnimatedCirclePage extends StatefulWidget {
  @override
  _AnimatedCirclePageState createState() => _AnimatedCirclePageState();
}

class _AnimatedCirclePageState extends State<AnimatedCirclePage>
    with SingleTickerProviderStateMixin {
  double _val;
  double _val2;

  @override
  void initState() {
    super.initState();
    _val = 60;
    _val2 = 40;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightBlueAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TweenAnimationBuilder(
                duration: Duration(milliseconds: 1700),
                tween: Tween<double>(begin: 0, end: _val),
                builder: (context, val, _) {
                  return CustomPaint(
                    size: Size(100, 100),
                    painter:
                        RoundStatus(completePercent: val, color: Colors.white),
                  );
                },
              ),
              SizedBox(
                height: 100,
              ),
              TweenAnimationBuilder(
                duration: Duration(milliseconds: 1700),
                tween: Tween<double>(begin: 0, end: _val2),
                builder: (context, val, _) {
                  return CustomPaint(
                    size: Size(100, 100),
                    painter:
                        RoundStatus(completePercent: val, color: Colors.blue),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
