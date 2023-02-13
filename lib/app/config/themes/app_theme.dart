import 'package:flutter/material.dart';
import '../../shared/shared.dart';

/// all custom application theme
class AppTheme {
  /// default application theme
  static ThemeData get basic => ThemeData(
        fontFamily: Font.poppins,
        primaryColorDark: kPrimaryColorDark,
        primaryColor: kPrimaryColor,
        primarySwatch: Colors.teal,
        primaryColorLight: kPrimaryColorLight,
        brightness: Brightness.dark,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom().merge(
          ButtonStyle(elevation: MaterialStateProperty.all(0)),
        )),
        canvasColor: kCanvasColor,
        cardColor: kCardColor,
      );

  // you can add other custom theme in this class like  light theme, dark theme ,etc.

  // example :
  // static ThemeData get light => ThemeData();

  // static ThemeData get dark => ThemeData();
}
