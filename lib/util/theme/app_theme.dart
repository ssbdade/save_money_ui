import 'package:flutter/material.dart';
import 'package:save_money_ui/util/theme/app_colors.dart';

class AppThemes {
  AppThemes._();

  static String font = "Inter";

  //primary color
  static final Color _lightPrimaryColor = violet100;

  //background colors
  static const Color _lightBackgroundColor = white;
  static final Color _lightBackgroundAppBarColor = _lightPrimaryColor;
  static const Color _lightBackgroundSecondaryColor = white;
  static const Color _lightBackgroundAlertColor = white;
  static const Color _lightBackgroundActionTextColor = white;
  static final Color _lightBackgroundErrorColor = red100;
  static const Color _lightBackgroundSuccessColor = white;

  //text colors
  static const Color _lightTextColor = Colors.black;
  static const Color _lightAlertTextColor = Colors.black;
  static const Color _lightTextSecondaryColor = Colors.black;

  //Icon Color
  static const Color _lightIconColor = Colors.black;

  //Border Color
  static final Color _lightBorderColor = HexColor("#F1F1FA");

  //form input colors
  static const Color _lightInputFillColor = _lightBackgroundSecondaryColor;
  static final Color _lightBorderActiveColor = _lightPrimaryColor;
  static final Color _lightBorderErrorColor = red100;

  //light text theme
  static final TextTheme _lightTextTheme = TextTheme(
    titleLarge: TextStyle(
      height: 80,
      color: dark75,
      fontWeight: FontWeight.bold,
    ),
    headlineLarge: TextStyle(
      height: 39,
      color: dark75,
      fontWeight: FontWeight.bold,
    ),
  );

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: font,
    scaffoldBackgroundColor: _lightBackgroundColor,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: _lightPrimaryColor,
    ),
    appBarTheme: AppBarTheme(
      color: _lightBackgroundAppBarColor,
      iconTheme: const IconThemeData(color: _lightTextColor),
      toolbarTextStyle: _lightTextTheme.bodyText2,
      titleTextStyle: _lightTextTheme.headline6,
    ),
    colorScheme: ColorScheme.light(
      primary: _lightPrimaryColor,
      // secondary: _lightSecondaryColor,
    ),
    snackBarTheme: const SnackBarThemeData(
        backgroundColor: _lightBackgroundAlertColor,
        actionTextColor: _lightBackgroundActionTextColor),
    iconTheme: const IconThemeData(
      color: _lightIconColor,
    ),
    popupMenuTheme: PopupMenuThemeData(color: _lightBackgroundAppBarColor),
    textTheme: _lightTextTheme,
    buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        buttonColor: _lightPrimaryColor,
        textTheme: ButtonTextTheme.primary),
    unselectedWidgetColor: _lightPrimaryColor,
    inputDecorationTheme: InputDecorationTheme(
      //prefixStyle: TextStyle(color: _lightIconColor),
      border: const OutlineInputBorder(
          borderSide: BorderSide(width: 1.0),
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          )),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _lightBorderColor, width: 1.0),
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _lightBorderActiveColor),
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _lightBorderErrorColor),
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _lightBorderErrorColor),
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      ),
      fillColor: _lightBackgroundSecondaryColor,
      //focusColor: _lightBorderActiveColor,
    ),
  );

}