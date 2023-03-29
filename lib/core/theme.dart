import 'package:flutter/material.dart';

final appTheme = ThemeData(
  primarySwatch: Colors.blue,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: Colors.white,
      fontSize: 72.0,
      fontWeight: FontWeight.bold,
    ),
    titleLarge: TextStyle(
      color: Colors.white,
      fontSize: 36.0,
      fontStyle: FontStyle.italic,
    ),
    bodyMedium: TextStyle(
      color: Colors.white,
      fontSize: 14.0,
      fontFamily: 'Hind',
    ),
  ),
);
