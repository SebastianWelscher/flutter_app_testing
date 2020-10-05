import 'package:flutter/material.dart';
import 'package:flutter_app_testing/imports/imports.dart';

class FullScreenTest extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
      //  systemNavigationBarColor: Colors.transparent,
      //  systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/23136.jpg'),
            fit: BoxFit.cover,
          )
        ),

      ),
    );
  }
}