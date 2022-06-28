import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.green;
  static const Color darkPrimaryColor = Colors.amber;
  static final ThemeData theme = ThemeData.light().copyWith(
    primaryColor: primaryColor,
    appBarTheme: const AppBarTheme(color: primaryColor, elevation: 0),
    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: primaryColor)),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      elevation: 3,
      backgroundColor: primaryColor
    ),
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primaryColor),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: primaryColor,
        ),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20))
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: primaryColor,
        ),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20))
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20))
      )
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primaryColor,
        shape: const StadiumBorder(),
        elevation: 0
      ),
    
    )
        
  );
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: primaryColor,
      buttonTheme: const ButtonThemeData(),
      appBarTheme: const AppBarTheme(color: darkPrimaryColor, elevation: 0),
      scaffoldBackgroundColor: Color.fromARGB(31, 168, 160, 160));
}
