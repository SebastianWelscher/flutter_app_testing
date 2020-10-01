import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  primarySwatch: Colors.grey,
  primaryColor: Colors.blueGrey,
  brightness: Brightness.dark,
  backgroundColor: Colors.black54,
  accentColor: Colors.white,
  accentIconTheme: IconThemeData(color: const Color(0xFF212121)),
  dividerColor: Colors.black12,
);

final lightTheme = ThemeData(
  primarySwatch: Colors.grey,
  primaryColor: Colors.blue,
  brightness: Brightness.light,
  backgroundColor: Colors.blue,
  accentColor: Colors.white,
  accentIconTheme: IconThemeData(color: Colors.white),
  dividerColor: Colors.white54,
);