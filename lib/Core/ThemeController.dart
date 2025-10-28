import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weatherapp/Core/ThemeData.dart';

class ThemeController extends GetxController{
  var isDark=false.obs;
  ThemeData get theme => isDark.value ? ThemeManager.dark :ThemeManager.light;
  Future<void>toogledata(bool Darkmode)async{
    Darkmode=isDark.value;
    SharedPreferences prefs= await SharedPreferences.getInstance();
    Get.changeTheme(theme);
    prefs.setBool("isDark",isDark.value);
  }
  Future<void>loadData()async {
    final SharedPreferences _prefs=await SharedPreferences.getInstance();
    final Saved=_prefs.getBool("IsDark") ?? false;
    isDark.value=Saved;
    Get.changeTheme(theme);
  }
}