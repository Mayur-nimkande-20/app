import 'package:flutter/material.dart';

// Light Theme Data
final ThemeData customLightTheme = ThemeData(
  primaryColor: Colors.blue,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: Colors.orange,
  ),
  backgroundColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: Colors.black),   // Updated for newer Flutter versions
    bodyMedium: TextStyle(color: Colors.black54), // Updated for newer Flutter versions
  ),
  appBarTheme: AppBarTheme(
    color: Colors.blue,
    foregroundColor: Colors.white,  // For AppBar text color
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.blueAccent,
    textTheme: ButtonTextTheme.primary,
  ),
);

// Dark Theme Data
final ThemeData customDarkTheme = ThemeData(
  primaryColor: Colors.black,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: Colors.red,
  ),
  backgroundColor: Colors.black87,
  scaffoldBackgroundColor: Colors.black87,
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: Colors.white),  // Updated for newer Flutter versions
    bodyMedium: TextStyle(color: Colors.white70), // Updated for newer Flutter versions
  ),
  appBarTheme: AppBarTheme(
    color: Colors.black,
    foregroundColor: Colors.white,  // For AppBar text color
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.redAccent,
    textTheme: ButtonTextTheme.primary,
  ),
);
