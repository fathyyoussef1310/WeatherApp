import 'package:flutter/cupertino.dart';
import 'package:weatherapp/Ui/Features/Home/HomeScreen.dart';
import 'package:weatherapp/Ui/Features/LayoutScreen.dart';
import 'package:weatherapp/Ui/Features/Map/Map.dart';
import 'package:weatherapp/Ui/Features/Mode/moodeScreen.dart';
import 'package:weatherapp/Ui/Features/SplashScreen2.dart';
import 'package:weatherapp/Ui/Features/profile/Profile.dart';
import 'package:weatherapp/Ui/SplashScreen.dart';

class RoutesManager{
  static const String splashScreen2='2';
  static const String splashScreen1='1';
  static const String homeScreen='home';
  static const String layout='Layout';
  static const String moode='moode';
  static const String map='map';
  static const String profile='profile';
  static Route<dynamic>? getRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen2:
        return CupertinoPageRoute(builder: (_) => Splashscreen2());
      case splashScreen1:
        return CupertinoPageRoute(builder: (_)=> SplashScreenAnimation());
      case homeScreen:
        return CupertinoPageRoute(builder: (_)=> Homescreen());
      case layout:
        return CupertinoPageRoute(builder: (_) => Layoutscreen());
      case moode:
        return CupertinoPageRoute(builder: (_)=> Moodescreen());
      case map:
        return CupertinoPageRoute(builder: (_)=> MapScreen());
      case profile:
        return CupertinoPageRoute(builder: (_)=> Profile());
    }
  }
}