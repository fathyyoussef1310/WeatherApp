import 'package:flutter/material.dart';
import 'package:weatherapp/Core/ColorsManager.dart' hide ColorsManager;
import '../Core/ColorsManager.dart';
abstract class ThemeManager {
  static final ThemeData light = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: ColorsManager.backgroundLight,
    primaryColor: ColorsManager.accentDarkBlue,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsManager.accentDarkBlue,
      elevation: 0,
      iconTheme: IconThemeData(color: ColorsManager.accentDarkBlue),
      titleTextStyle: TextStyle(
        color: ColorsManager.accentDarkBlue,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),
    primaryColorDark: ColorsManager.accentDarkBlue,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ColorsManager.backgroundLight,
      selectedItemColor: ColorsManager.accentDarkBlue,
      unselectedItemColor: ColorsManager.textGrey,
    ),
    textTheme:  TextTheme(
      bodyLarge: TextStyle(color: Colors.black, fontSize: 18),
      bodyMedium: TextStyle(color: Colors.black87, fontSize: 16),
      bodySmall: TextStyle(color: Colors.black54, fontSize: 14),
    ),
  );
  static final ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: ColorsManager.backgroundDark,
    primaryColor: ColorsManager.backgroundLight,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsManager.backgroundLight,
      elevation: 0,
      iconTheme: IconThemeData(color: ColorsManager.backgroundLight),
      titleTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ColorsManager.backgroundLight,
      selectedItemColor: ColorsManager.backgroundLight,
      unselectedItemColor: Colors.grey,
    ),
    primaryColorDark: ColorsManager.accentDarkBlue,
    textTheme:  TextTheme(
      bodyLarge: TextStyle(color: Colors.white, fontSize: 18),
      bodyMedium: TextStyle(color: Colors.white70, fontSize: 16),
      bodySmall: TextStyle(color: Colors.white60, fontSize: 14),
    ),
  );
}
