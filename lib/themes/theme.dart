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
  static const Color primaryDark = Colors.green;

  static final ThemeData theme_light = ThemeData.light().copyWith(
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ),
      listTileTheme:
          const ListTileThemeData(textColor: secondary, iconColor: primary),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: secondary),
      ),
      cardTheme: CardTheme(
          clipBehavior: Clip.antiAlias,
          shadowColor: secondary,
          elevation: 25,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          )),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          elevation: 20,
          shadowColor: secondary,
          shape: StadiumBorder(),
        ),
      ),
      dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ));

  static final ThemeData theme_dark = ThemeData.dark().copyWith(
      appBarTheme: const AppBarTheme(
        color: secondary,
        elevation: 0,
        
      ),
      listTileTheme: const ListTileThemeData(
        textColor: secondary,
        iconColor: secondary,
      ),
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: secondary)),
      cardTheme: CardTheme(
          clipBehavior: Clip.antiAlias,
          shadowColor: secondary,
          elevation: 25,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          )),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: secondary,
          elevation: 20,
          shadowColor: primaryDark,
          shape: StadiumBorder(),
        ),
      ),
      dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      );
}
