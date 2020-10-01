import 'package:flutter_app_testing/imports/imports.dart';

class BouncyPageRoute extends PageRouteBuilder{

  final Widget widget;

  BouncyPageRoute({this.widget}): super(
    transitionDuration: Duration(milliseconds: 400),
    transitionsBuilder: (BuildContext context, Animation<double> animation,
    Animation<double> secAnimation, Widget child){
      animation = CurvedAnimation(parent: animation, curve: Curves.linearToEaseOut);

      return ScaleTransition(
        alignment: Alignment.bottomCenter,
        scale: animation,
        child: child,
      );
    },
    pageBuilder: (BuildContext context, Animation<double> animation,
      Animation<double> secAnimation){
    return widget;
  });
}