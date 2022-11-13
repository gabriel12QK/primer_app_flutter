import 'package:flutter/material.dart';

class AppTheme with ChangeNotifier {
  ThemeData _themeData;

  AppTheme(this._themeData);

  getTheme() => _themeData;

  setTheme(ThemeData themes) {
    _themeData = themes;
    notifyListeners();
  }



  static const Color primary = Colors.indigo;
  static const Color secondary = Color.fromARGB(255, 19, 130, 198);


  static final ThemeData theme_light = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
  );
  static final ThemeData theme_dark = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
  );
}
